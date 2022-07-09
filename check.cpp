#include <backends/cxxrtl/cxxrtl.h>

#if defined(CXXRTL_INCLUDE_CAPI_IMPL) || \
    defined(CXXRTL_INCLUDE_VCD_CAPI_IMPL)
#include <backends/cxxrtl/cxxrtl_capi.cc>
#endif

#if defined(CXXRTL_INCLUDE_VCD_CAPI_IMPL)
#include <backends/cxxrtl/cxxrtl_vcd_capi.cc>
#endif

using namespace cxxrtl_yosys;

namespace cxxrtl_design {

// \top: 1
// \src: Q260.v:1.1-12.10
struct p_fun : public module {
	// \src: Q260.v:2.7-2.8
	/*input*/ value<1> p_a;
	// \src: Q260.v:2.9-2.10
	/*input*/ value<1> p_b;
	// \src: Q260.v:2.11-2.12
	/*input*/ value<1> p_c;
	// \src: Q260.v:3.8-3.9
	/*output*/ value<1> p_d;
	// \src: Q260.v:3.10-3.11
	/*output*/ value<1> p_e;
	// \src: Q260.v:4.6-4.8
	/*outline*/ value<1> p_w1;
	// \src: Q260.v:4.10-4.12
	/*outline*/ value<1> p_w2;
	// \src: Q260.v:4.14-4.16
	/*outline*/ value<1> p_w3;
	p_fun() {}
	p_fun(adopt, p_fun other) {}

	void reset() override {
		*this = p_fun(adopt {}, std::move(*this));
	}

	bool eval() override;
	bool commit() override;

	void debug_eval();
	debug_outline debug_eval_outline { std::bind(&p_fun::debug_eval, this) };

	void debug_info(debug_items &items, std::string path = "") override;
}; // struct p_fun

bool p_fun::eval() {
	bool converged = true;
	// \src: Q260.v:4.10-4.12
	value<1> p_w2;
	// \src: Q260.v:7.5-7.17
	// cell $and$Q260.v:7$2
	p_w2 = and_uu<1>(p_b, p_c);
	// \src: Q260.v:11.5-11.17
	// cell $xor$Q260.v:11$4
	p_e = xor_uu<1>(p_w2, p_c);
	// cells $or$Q260.v:10$3 $not$Q260.v:0$5 $or$Q260.v:6$1
	p_d = or_uu<1>(not_u<1>(or_uu<1>(p_a, p_b)), p_w2);
	return converged;
}

bool p_fun::commit() {
	bool changed = false;
	return changed;
}

void p_fun::debug_eval() {
	// \src: Q260.v:6.4-6.16
	// cell $or$Q260.v:6$1
	p_w1 = or_uu<1>(p_a, p_b);
	// \src: Q260.v:7.5-7.17
	// cell $and$Q260.v:7$2
	p_w2 = and_uu<1>(p_b, p_c);
	// cells $not$Q260.v:0$5 $or$Q260.v:6$1
	p_w3 = not_u<1>(p_w1);
}

CXXRTL_EXTREMELY_COLD
void p_fun::debug_info(debug_items &items, std::string path) {
	assert(path.empty() || path[path.size() - 1] == ' ');
	items.add(path + "a", debug_item(p_a, 0, debug_item::INPUT|debug_item::UNDRIVEN));
	items.add(path + "b", debug_item(p_b, 0, debug_item::INPUT|debug_item::UNDRIVEN));
	items.add(path + "c", debug_item(p_c, 0, debug_item::INPUT|debug_item::UNDRIVEN));
	items.add(path + "d", debug_item(p_d, 0, debug_item::OUTPUT|debug_item::DRIVEN_COMB));
	items.add(path + "e", debug_item(p_e, 0, debug_item::OUTPUT|debug_item::DRIVEN_COMB));
	items.add(path + "w1", debug_item(debug_eval_outline, p_w1, 0));
	items.add(path + "w2", debug_item(debug_eval_outline, p_w2, 0));
	items.add(path + "w3", debug_item(debug_eval_outline, p_w3, 0));
}

} // namespace cxxrtl_design

extern "C"
cxxrtl_toplevel cxxrtl_design_create() {
	return new _cxxrtl_toplevel { std::unique_ptr<cxxrtl_design::p_fun>(new cxxrtl_design::p_fun) };
}
