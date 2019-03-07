#ifndef CNF_H
#define CNF_H
#include "clause.h"

#include "bitmap.h"
#include "cnfedit.h"
//#include "versionset.h"

class Cnf
{
public:
  Cnf();
  ~Cnf();

  uint32_t nVar;
  uint32_t nClause;
  BitMap *bmap; // 第i个子句是否还在 (没有被简化移除)
  Clause **clVec;
};

Cnf *createCnf();
void destroy(Cnf *cnf);

void parseFile(const char* fpath);
static Clause* parseLine(char *buf);

// 获取单子句里的变元
bool getSimple(Cnf *cnf, int *var);
Clause *getShortestClause(Cnf *cnf);

// 所有子句都被简化了，解完成
bool isEmpty(Cnf *cnf) { return bmap->isAllFalse(); }

void show(Cnf *cnf);

bool existClause(Cnf *cnf, uint32_t pos);
// 标记子句是否被化简移除
void markClauseExist(Cnf *cnf, uint32_t pos, bool exist);
//  void apply(CnfEdit *edit);
// 分支回溯时 还原到化简前的 CNF
void restore(Cnf *cnf, CnfEdit *edit);

extern const uint32_t LINE_MAX_LEN;

const uint32_t LINE_MAX_LEN = 80;

#endif // CNF_H