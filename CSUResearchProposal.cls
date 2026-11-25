\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CSUResearchProposal}[2026/11/25 CSU Research Proposal]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  中南大学开题报告模板
%  钟乙源，刘亮
%
%  修改自张臻的西北工业大学开题报告模板 NPUResearchProposal.cls(https://github.com/zzhang1987/NPUResearchProposal)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax
\LoadClass[a4paper,12pt]{article}
\RequirePackage[zihao=5,scheme=chinese,fontset=fandol,heading]{ctex}


\RequirePackage{fontspec}
\RequirePackage{indentfirst}
\RequirePackage{mathptmx}

\ctexset{
	section={
		format=\mdseries\zihao{5} \bfseries \songti,
		aftername={、},
		number=\chinese{section},
		beforeskip=0.5ex,
		afterskip=0.5ex,
	}
}
\ctexset{
	subsection={
		format=\bfseries\songti \zihao{5} ,
		beforeskip=0.5ex,
		afterskip=0.5ex,
	}
}

\ctexset{
	bibname = {}
}


\IfFontExistsTF{Times New Roman}{\setmainfont{Times New Roman}}{\setmainfont{TeX Gyre Termes}}
\IfFontExistsTF{SimSun}{
  \setCJKmainfont[AutoFakeBold=2]{SimSun}
  \setCJKfamilyfont{zhsong}[AutoFakeBold=2]{SimSun}
}{}

\RequirePackage{caption}
\DeclareCaptionFont{song}{\songti}
\DeclareCaptionFont{minusfour}{\zihao{-4}}
\DeclareCaptionFont{figurefont}{\heiti\zihao{5}}
\captionsetup[figure]{%
	format=hang,   % 标题从第二行开始都有缩进, 应该和 justification=raggedright 的效果一样.
	labelsep=quad, % 分隔符是一个空格
	font=figurefont,%黑体五号
	position=bottom, % position=bottom, 不代表标题放在下面, 标题仍放在你放\caption的位置.
	%	belowskip=0.5ex,
}


\RequirePackage{xunicode}% provides unicode character macros
\RequirePackage{xltxtra} % provides some fixes/extras
\RequirePackage[a4paper,top=25.4mm,bottom=25.4mm,left=31.75mm,right=31.75mm]{geometry}
\RequirePackage{tikz}

\RequirePackage{setspace}
\RequirePackage{ifthen,epsfig,graphicx}
\RequirePackage{color}
\RequirePackage{etoolbox}
%\RequirePackage{epstopdf}

\RequirePackage{ulem}



\RequirePackage{array}
\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}m{#1}}
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}m{#1}}
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}m{#1}}

\newcommand{\@stunumber}{?}
\newcommand{\stunumber}[1]{\renewcommand{\@stunumber}{#1}}
\newcommand{\@School}{?}
\newcommand{\School}[1]{\renewcommand{\@School}{#1}}
\newcommand{\@Major}{?}
\newcommand{\Major}[1]{\renewcommand{\@Major}{#1}}

\newcommand{\@Degree}{?}
\newcommand{\Degree}[1]{\renewcommand{\@Degree}{#1}}

\newcommand{\@StudentID}{?}
\newcommand{\StudentID}[1]{\renewcommand{\@StudentID}{#1}}

\newcommand{\@ThesisTitle}{?}
\newcommand{\ThesisTitle}[1]{\renewcommand{\@ThesisTitle}{#1}}

\newcommand{\@Supervisor}{?}
\newcommand{\Supervisor}[1]{\renewcommand{\@Supervisor}{#1}}

\newcommand{\@ReviewerOneName}{?}
\newcommand{\@ReviewerOneTitle}{?}
\newcommand{\@ReviewerOneInstitute}{?}
\newcommand{\ReviewerOne}[3]{\renewcommand{\@ReviewerOneName}{#1} \renewcommand{\@ReviewerOneTitle}{#2} \renewcommand{\@ReviewerOneInstitute}{#3}}

\newcommand{\@ReviewerTwoName}{?}
\newcommand{\@ReviewerTwoTitle}{?}
\newcommand{\@ReviewerTwoInstitute}{?}
\newcommand{\ReviewerTwo}[3]{\renewcommand{\@ReviewerTwoName}{#1} \renewcommand{\@ReviewerTwoTitle}{#2} \renewcommand{\@ReviewerTwoInstitute}{#3}}

\newcommand{\@ReviewerThreeName}{?}
\newcommand{\@ReviewerThreeTitle}{?}
\newcommand{\@ReviewerThreeInstitute}{?}
\newcommand{\ReviewerThree}[3]{\renewcommand{\@ReviewerThreeName}{#1} \renewcommand{\@ReviewerThreeTitle}{#2} \renewcommand{\@ReviewerThreeInstitute}{#3}}

\newcommand{\@ReviewerFourName}{?}
\newcommand{\@ReviewerFourTitle}{?}
\newcommand{\@ReviewerFourInstitute}{?}
\newcommand{\ReviewerFour}[3]{\renewcommand{\@ReviewerFourName}{#1} \renewcommand{\@ReviewerFourTitle}{#2} \renewcommand{\@ReviewerFourInstitute}{#3}}

\newcommand{\@ReviewerFiveName}{?}
\newcommand{\@ReviewerFiveTitle}{?}
\newcommand{\@ReviewerFiveInstitute}{?}
\newcommand{\ReviewerFive}[3]{\renewcommand{\@ReviewerFiveName}{#1} \renewcommand{\@ReviewerFiveTitle}{#2} \renewcommand{\@ReviewerFiveInstitute}{#3}}

\newcommand{\@ReviewerSixName}{?}
\newcommand{\@ReviewerSixTitle}{?}
\newcommand{\@ReviewerSixInstitute}{?}
\newcommand{\ReviewerSix}[3]{\renewcommand{\@ReviewerSixName}{#1} \renewcommand{\@ReviewerSixTitle}{#2} \renewcommand{\@ReviewerSixInstitute}{#3}}

\newcommand{\@ReviewerSevenName}{}
\newcommand{\@ReviewerSevenTitle}{}
\newcommand{\@ReviewerSevenInstitute}{}
\newcommand{\ReviewerSeven}[3]{\renewcommand{\@ReviewerSevenName}{#1}\renewcommand{\@ReviewerSevenTitle}{#2}\renewcommand{\@ReviewerSevenInstitute}{#3}}

\newcommand{\@SecretaryName}{?}
\newcommand{\@SecretaryTitle}{?}
\newcommand{\@SecretaryInstitute}{?}
\newcommand{\Secretary}[3]{\renewcommand{\@SecretaryName}{#1} \renewcommand{\@SecretaryTitle}{#2} \renewcommand{\@SecretaryInstitute}{#3}}

\newcommand{\@SubjectFrom}{?}
\newcommand{\SubjectFrom}[1]{\renewcommand{\@SubjectFrom}{#1}}

\newcommand{\@Classification}{?}
\newcommand{\Classification}[1]{\renewcommand{\@Classification}{#1}}
\newcommand{\@Date}{?}
\newcommand{\Date}[1]{\renewcommand{\@Date}{#1}}

\setlength{\parindent}{2em}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	%menucolor=\color{violet},
	citecolor=blue,
	%urlcolor=blue,
	linkcolor=OrangeRed,
	%  breaklinks=true,
}

\RequirePackage{lipsum}

% Word 表格宽 8928 twip，略宽于两侧页边距之间的文字区。
\newlength{\proposalFormWidth}
\setlength{\proposalFormWidth}{446.4bp}
\newif\ifproposalBody
\pagestyle{empty}
\AddToHook{shipout/background}{%
  \begin{tikzpicture}[remember picture,overlay]
    \node[inner sep=0pt] at (current page.center)
      {\includegraphics[width=218.87mm,height=303.07mm]{figures/csu_bg.jpg}};
    \ifproposalBody
      \draw[line width=.5bp]
        ([xshift=-.5\proposalFormWidth,yshift=-25.4mm]current page.north)
        rectangle ++(\proposalFormWidth,-232mm);
    \fi
  \end{tikzpicture}%
}

\newcommand{\proposalCoverField}[2]{%
  \makebox[6em][s]{#1：}& #2\\\cline{2-2}%
}
\renewcommand{\maketitle}{%
  \clearpage\thispagestyle{empty}
  \begingroup
    \linespread{1}\selectfont
    \vspace*{2mm}\noindent{\zihao{4}附件1}\par
    \vspace{11mm}
    \begin{center}
      {\songti\bfseries\fontsize{26bp}{46bp}\selectfont
       中\enspace 南\enspace 大\enspace 学\par 研究生学位论文开题报告\par}
      \vspace{44mm}
      {\zihao{-4}\renewcommand{\arraystretch}{1.58}%
       \begin{tabular}{@{}p{34mm}@{}>{\centering\arraybackslash}m{73mm}@{}}
         \proposalCoverField{姓名}{\@author}
         \proposalCoverField{学号}{\@StudentID}
         \proposalCoverField{论文题目}{\@ThesisTitle}
         \proposalCoverField{课题来源}{\@SubjectFrom}
         \proposalCoverField{攻读学位}{\@Degree}
         \proposalCoverField{指导教师}{\@Supervisor}
         \proposalCoverField{学科专业}{\@Major}
         \proposalCoverField{二级单位}{\@School}
         \proposalCoverField{填表日期}{\@Date}
       \end{tabular}\par}
      \vspace{48mm}
      {\songti\bfseries\fontsize{16bp}{20bp}\selectfont 中南大学研究生院制\par}
    \end{center}
  \endgroup
  % 表格位于纸张中央，正文留在表格内；长文可自动续页。
  \newgeometry{left=28.2mm,right=28.2mm,top=27.4mm,bottom=42mm}
  \proposalBodytrue
}

% 表格中的签字栏和评语栏按最小高度留白。
\newcommand{\proposalFullRow}[1]{\multicolumn{5}{|l|}{#1}}
\newcommand{\proposalReviewBlock}[3]{%
  \begin{minipage}[c][#1][t]{\dimexpr\proposalFormWidth-2\tabcolsep-2\arrayrulewidth\relax}
    \vspace{1mm}#2\par\vfill #3\par\vspace{1mm}
  \end{minipage}%
}
\newcommand{\proposalReviewerRow}[2]{%
  \rule[-3mm]{0pt}{9.4mm}#1 & \csname @#2Name\endcsname &
  \csname @#2Title\endcsname & \csname @#2Institute\endcsname & \\
}
% 单元格宽度含左右留白，最后一列吸收表格边线的宽度。
\newcolumntype{P}[1]{>{\centering\arraybackslash}m{\dimexpr#1-2\tabcolsep-\arrayrulewidth\relax}}
\AtEndDocument{%
  \clearpage\proposalBodyfalse\restoregeometry
  \begingroup
    \zihao{5}\songti\linespread{1}\selectfont
    \setlength{\arrayrulewidth}{.5bp}
    \setlength{\tabcolsep}{1.4mm}
    \noindent\makebox[\textwidth][c]{%
      \begin{tabular}{|P{79.4bp}|P{70.9bp}|P{77.9bp}|P{148.85bp}|P{\dimexpr69.35bp-\arrayrulewidth\relax}|}
        \hline
        \proposalFullRow{\proposalReviewBlock{37mm}{\bfseries 八、指导教师意见}
          {\centering 指导教师签字：\hspace{25mm} 日期：\hspace{12mm}}}\\\hline
        \proposalFullRow{\rule[-3mm]{0pt}{10mm}\bfseries 九、专家评审意见}\\\hline
        \rule[-3mm]{0pt}{9.8mm}\bfseries 评审小组成员 & \bfseries 姓名 & \bfseries 职称 & \bfseries 工作单位 & \bfseries 本人签名 \\\hline
        \proposalReviewerRow{组长}{ReviewerOne}\hline
        \proposalReviewerRow{}{ReviewerTwo}\cline{2-5}
        \proposalReviewerRow{}{ReviewerThree}\cline{2-5}
        \proposalReviewerRow{}{ReviewerFour}\cline{2-5}
        \proposalReviewerRow{\raisebox{4.7mm}[0pt][0pt]{成员}}{ReviewerFive}\cline{2-5}
        \proposalReviewerRow{}{ReviewerSix}\cline{2-5}
        \proposalReviewerRow{}{ReviewerSeven}\hline
        \proposalReviewerRow{秘书}{Secretary}\hline
        \proposalFullRow{\proposalReviewBlock{62mm}{\bfseries 评审意见：}
          {\bfseries 评定等级（在\underline{\hspace{2em}}处打分）：\par
           \hspace*{6mm}\makebox[.47\linewidth][l]{优秀（$\geq 85$）\underline{\hspace{15mm}}}良好（84--75）\underline{\hspace{15mm}}\par
           \hspace*{6mm}\makebox[.47\linewidth][l]{合格（74--60）\underline{\hspace{15mm}}}不合格（$<60$）\underline{\hspace{15mm}}\par
           \vspace{4mm}\centering 评审小组组长签字：\hspace{18mm}日期：\hspace{12mm}}}\\\hline
        \proposalFullRow{\proposalReviewBlock{31mm}{\bfseries 十、所在二级单位意见}
          {\centering 负责人签字：\hspace{18mm}（单位盖章）日期：\hspace{8mm}}}\\\hline
      \end{tabular}}\par
  \endgroup
}
