# 中南大学研究生学位论文开题报告 LaTeX 模板

本模板参照中南大学《研究生学位论文开题报告》Word 表格排版。默认示例共 9 页，包括封面、七个正文栏目和评审签字页。各栏内容较长时可自动续页。

## 填写与编译

1. 在 `Proposal.tex` 中修改姓名、学号、论文题目、课题来源、攻读学位、导师、专业、二级单位和日期，然后替换正文示例。
2. 评审表默认留空，便于手写。若需要预填，`\ReviewerOne` 对应组长，`\ReviewerTwo` 至 `\ReviewerSeven` 对应六位成员，`\Secretary` 对应秘书。三个参数依次为姓名、职称、工作单位。
3. 参考文献放入 `ref.bib`。在仓库根目录执行以下命令，生成 `Proposal.pdf`。

   ```bash
   latexmk -xelatex Proposal.tex
   ```

中文优先使用宋体（SimSun），缺少该字体时使用 TeX Live 附带的 Fandol 宋体。西文优先使用 Times New Roman，缺少时使用 TeX Gyre Termes。

## 致谢

本模板基于以下工作开发：
- 钟乙源的[中南大学开题报告模板](https://github.com/zhong-yy/CSU_Thesis_Proposal)
- 张臻的[西北工业大学开题报告模板](https://github.com/zzhang1987/NPUResearchProposal)
- 刘亮的[新版中南大学开题报告模板](https://github.com/gisliuliang/New_CSU_Thesis_Proposal)