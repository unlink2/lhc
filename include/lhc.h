#ifndef lhcH__
#define lhcH__

struct lhc_config {
  _Bool verbose;
};

int lhc_main(struct lhc_config *cfg);

#endif 
