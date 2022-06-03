.class public Lgnu/kawa/slib/syntaxutils;
.super Lgnu/expr/ModuleBody;
.source "syntaxutils.scm"


# static fields
.field public static final $Prvt$$Ex:Lkawa/lang/Macro;

.field public static final $Prvt$typecase$Pc:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/syntaxutils;

.field static final Lit0:Lgnu/expr/Keyword;

.field static final Lit1:Lgnu/lists/PairWithPosition;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/lists/PairWithPosition;

.field static final Lit12:Lgnu/lists/PairWithPosition;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxRules;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lkawa/lang/SyntaxRules;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/lists/PairWithPosition;

.field static final Lit4:Lgnu/lists/PairWithPosition;

.field static final Lit5:Lgnu/lists/PairWithPosition;

.field static final Lit6:Lgnu/lists/PairWithPosition;

.field static final Lit7:Lgnu/math/IntNum;

.field static final Lit8:Lgnu/math/IntNum;

.field static final Lit9:Lgnu/lists/PairWithPosition;

.field public static final expand:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "lambda"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "as"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "else"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "let"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "cond"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "or"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "quote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "eql"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "expand"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    const-string/jumbo v8, "!"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    sput-object v7, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\r\u0017\u0010\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u000b)\u0011\u0018\u000c\u0008\u0003\u0008\u0015\u0013"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "invoke"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit16:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    const-string/jumbo v8, "typecase%"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    sput-object v7, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x1

    sget-object v6, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x2

    sget-object v6, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x6

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0003\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\r\u000b"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\\,\u000c\u0002\u000c\u000f\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0003\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004yY\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0008\u000b\u0008\u0015\u0013\u0008\u0011\u0018\u001c\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "eqv?"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x4

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x2

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\\,\u000c\u0002\u000c\u000f\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0003\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003)\t\u000b\u0008\u0015\u0013\u0008\u001d\u001b"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x3

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007l<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0003\u0003\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0008\u0011\u0018\u0014\u0011\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u0015\u0013\u0008\u0011\u0018$\t\u0003I\r\t\u000b\u0008\u0011\u0018\u000c\u0008\u0003\u0008\u0011\u0018,\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "f"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x4

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x5

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x4

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0003\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\u00f19\u0011\u0018\u000c\t\u0003\u0008\u000b\u0008\u0011\u0018\u0014Q\u0008\t\u0003\u0011\u0018\u001c\t\u000b\u0008\u0003\u0008\u0011\u0018$\u0008\u0015\u0013\u0008\u0011\u0018,\u0008\u0011\u00184\t\u0003\u0008\u001d\u001b"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "instance?"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x3

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "::"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x4

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x5

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x6

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v18, v4

    move-object/from16 v4, v18

    move-object/from16 v5, v18

    const/4 v6, 0x5

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v7

    move-object/from16 v7, v18

    move-object/from16 v8, v18

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\u0011\u0018,\u0008\u0003"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "error"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    const-string/jumbo v15, "typecase% failed"

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x3

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "getClass"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x4

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x5

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    const-string/jumbo v17, "<object>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit14:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, ":"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x9b010

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x99010

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x8700c

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x75004

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "if"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x66007

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x6401b

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x5c007

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    const-string/jumbo v3, "set"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x5a007

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    const-string/jumbo v1, "lang"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v4, 0x4401d

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    const-string/jumbo v1, "env"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    new-instance v1, Lgnu/kawa/slib/syntaxutils;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    invoke-direct {v2}, Lgnu/kawa/slib/syntaxutils;-><init>()V

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit14:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->$Prvt$typecase$Pc:Lkawa/lang/Macro;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit16:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->$Prvt$$Ex:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v18, v1

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    sget-object v3, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->expand:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "sexp":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v3, v1

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    invoke-static {v3, v4, v5}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    sget-object v5, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v4, v5, :cond_0

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v3

    :cond_0
    move-object v2, v3

    .line 68
    .local v2, "env":Ljava/lang/Object;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    sget-object v6, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v9, v7, v8

    invoke-static {v6}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lgnu/kawa/slib/syntaxutils;->rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "sexp":Ljava/lang/Object;
    return-object v0
.end method

.method static rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 19

    .prologue
    .line 71
    move-object/from16 v0, p0

    .local v0, "exp":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v11, v1

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    invoke-static {v11, v12, v13}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    sget-object v13, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v12, v13, :cond_0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v11

    :cond_0
    move-object v2, v11

    .local v2, "lang":Ljava/lang/Object;
    move-object v11, v1

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    invoke-static {v11, v12, v13}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    sget-object v13, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v12, v13, :cond_1

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v11

    :cond_1
    move-object v3, v11

    .line 74
    .local v3, "env":Ljava/lang/Object;
    move-object v11, v3

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v5, v12

    :try_start_0
    check-cast v11, Lgnu/mapping/Environment;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v2

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v5, v13

    :try_start_1
    check-cast v12, Lgnu/expr/Language;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v11, v12}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object v11

    move-object v4, v11

    .line 76
    .local v4, "namelookup":Lgnu/expr/NameLookup;
    new-instance v11, Lgnu/text/SourceMessages;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lgnu/text/SourceMessages;-><init>()V

    move-object v5, v11

    .line 75
    .local v5, "messages":Lgnu/text/SourceMessages;
    new-instance v11, Lkawa/lang/Translator;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v2

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v7, v14

    :try_start_2
    check-cast v13, Lgnu/expr/Language;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v14, v5

    move-object v15, v4

    invoke-direct {v12, v13, v14, v15}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    move-object v6, v11

    .local v6, "translator":Lkawa/lang/Translator;
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v11

    move-object v11, v6

    invoke-static {v11}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v11

    move-object v7, v11

    .line 80
    .local v7, "saved$Mncomp":Lgnu/expr/Compilation;
    move-object v11, v6

    move-object v12, v0

    :try_start_3
    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    move-object v8, v11

    .line 82
    move-object v11, v7

    invoke-static {v11}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 80
    .line 82
    move-object v11, v8

    move-object v0, v11

    .end local v0    # "exp":Ljava/lang/Object;
    return-object v0

    .line 80
    .restart local v0    # "exp":Ljava/lang/Object;
    :catchall_0
    move-exception v11

    move-object v9, v11

    .line 82
    move-object v11, v7

    invoke-static {v11}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 80
    move-object v11, v9

    throw v11

    .line 75
    .end local v4    # "namelookup":Lgnu/expr/NameLookup;
    .end local v5    # "messages":Lgnu/text/SourceMessages;
    .end local v6    # "translator":Lkawa/lang/Translator;
    .end local v7    # "saved$Mncomp":Lgnu/expr/Compilation;
    :catch_0
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    const-string/jumbo v14, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)"

    const/4 v15, 0x1

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11

    :catch_1
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    const-string/jumbo v14, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)"

    const/4 v15, 0x2

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11

    .line 77
    .restart local v4    # "namelookup":Lgnu/expr/NameLookup;
    .restart local v5    # "messages":Lgnu/text/SourceMessages;
    :catch_2
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v12, v18

    move-object/from16 v13, v17

    const-string/jumbo v14, "kawa.lang.Translator.<init>(gnu.expr.Language,gnu.text.SourceMessages,gnu.expr.NameLookup)"

    const/4 v15, 0x1

    move-object/from16 v16, v7

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11
.end method

.method static unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;
    .locals 24

    .prologue
    .line 85
    move-object/from16 v2, p0

    .local v2, "exp":Lgnu/expr/Expression;
    new-instance v8, Lgnu/kawa/slib/syntaxutils$frame;

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    invoke-direct {v9}, Lgnu/kawa/slib/syntaxutils$frame;-><init>()V

    move-object v3, v8

    .line 86
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/LetExp;

    if-eqz v8, :cond_0

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_0
    check-cast v8, Lgnu/expr/LetExp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/LetExp;
    move-object v8, v4

    invoke-static {v8}, Lgnu/kawa/slib/syntaxutils;->unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-result-object v8

    .local v4, "exp":Lgnu/expr/IfExp;
    .local v5, "eclause":Lgnu/expr/Expression;
    :goto_0
    move-object v2, v8

    return-object v2

    .end local v4    # "exp":Lgnu/expr/IfExp;
    .end local v5    # "eclause":Lgnu/expr/Expression;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_0
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_1

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_1
    check-cast v8, Lgnu/expr/QuoteExp;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/QuoteExp;
    move-object v8, v4

    invoke-static {v8}, Lgnu/kawa/slib/syntaxutils;->unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-result-object v8

    goto :goto_0

    .end local v4    # "exp":Lgnu/expr/QuoteExp;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_1
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/SetExp;

    if-eqz v8, :cond_2

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_2
    check-cast v8, Lgnu/expr/SetExp;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/SetExp;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x0

    sget-object v11, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    aput-object v11, v9, v10

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    const/4 v13, 0x0

    move-object v14, v4

    invoke-virtual {v14}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x1

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v17, v15, v16

    invoke-static {v14}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    .end local v4    # "exp":Lgnu/expr/SetExp;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_2
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/LambdaExp;

    if-eqz v8, :cond_4

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_3
    check-cast v8, Lgnu/expr/LambdaExp;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/LambdaExp;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x0

    sget-object v11, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    aput-object v11, v9, v10

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    const/4 v13, 0x0

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v15, v3

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v14, v23

    move-object/from16 v15, v22

    iput-object v15, v14, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 92
    move-object v14, v4

    invoke-virtual {v14}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v14

    move-object v5, v14

    .local v5, "decl":Lgnu/expr/Declaration;
    :goto_1
    move-object v14, v3

    move-object v6, v14

    .line 93
    .local v6, "closureEnv":Lgnu/kawa/slib/syntaxutils$frame;
    move-object v14, v5

    const/4 v15, 0x0

    if-eq v14, v15, :cond_3

    .line 96
    move-object v14, v5

    invoke-virtual {v14}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v14

    move-object v7, v14

    .line 92
    .local v7, "v":Ljava/lang/Object;
    move-object v14, v3

    move-object v15, v7

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    iput-object v15, v14, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 94
    move-object v14, v5

    invoke-virtual {v14}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v14

    move-object v5, v14

    goto :goto_1

    .end local v7    # "v":Ljava/lang/Object;
    :cond_3
    move-object v14, v3

    iget-object v14, v14, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    invoke-static {v14}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    move-object/from16 v17, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x1

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v17, v15, v16

    invoke-static {v14}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    .line 86
    .end local v4    # "exp":Lgnu/expr/LambdaExp;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "closureEnv":Lgnu/kawa/slib/syntaxutils$frame;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_4
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_5

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_4
    check-cast v8, Lgnu/expr/ReferenceExp;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/ReferenceExp;
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-result-object v8

    goto/16 :goto_0

    .end local v4    # "exp":Lgnu/expr/ReferenceExp;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_5
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/ApplyExp;

    if-eqz v8, :cond_6

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_5
    check-cast v8, Lgnu/expr/ApplyExp;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/ApplyExp;
    move-object v8, v4

    invoke-static {v8}, Lgnu/kawa/slib/syntaxutils;->unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-result-object v8

    goto/16 :goto_0

    .end local v4    # "exp":Lgnu/expr/ApplyExp;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_6
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/BeginExp;

    if-eqz v8, :cond_7

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_6
    check-cast v8, Lgnu/expr/BeginExp;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/BeginExp;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x0

    sget-object v11, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    aput-object v11, v9, v10

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x1

    move-object v11, v4

    invoke-virtual {v11}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v11

    invoke-static {v11}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    .end local v4    # "exp":Lgnu/expr/BeginExp;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_7
    move-object v8, v2

    instance-of v8, v8, Lgnu/expr/IfExp;

    if-eqz v8, :cond_9

    move-object v8, v2

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    move-object v5, v9

    :try_start_7
    check-cast v8, Lgnu/expr/IfExp;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-object v4, v8

    .local v4, "exp":Lgnu/expr/IfExp;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .end local v2    # "exp":Lgnu/expr/Expression;
    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x0

    sget-object v11, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    aput-object v11, v9, v10

    move-object/from16 v22, v8

    move-object/from16 v8, v22

    move-object/from16 v9, v22

    const/4 v10, 0x1

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    const/4 v13, 0x0

    move-object v14, v4

    invoke-virtual {v14}, Lgnu/expr/IfExp;->getTest()Lgnu/expr/Expression;

    move-result-object v14

    invoke-static {v14}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v22, v11

    move-object/from16 v11, v22

    move-object/from16 v12, v22

    const/4 v13, 0x1

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/IfExp;->getThenClause()Lgnu/expr/Expression;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x0

    .line 104
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/IfExp;->getElseClause()Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v5, v20

    .line 105
    .local v5, "eclause":Lgnu/expr/Expression;
    move-object/from16 v20, v5

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_2
    aput-object v20, v18, v19

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x1

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v17}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_8
    move-object/from16 v20, v5

    invoke-static/range {v20 .. v20}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v20

    goto :goto_2

    .line 86
    .end local v4    # "exp":Lgnu/expr/IfExp;
    .end local v5    # "eclause":Lgnu/expr/Expression;
    .restart local v2    # "exp":Lgnu/expr/Expression;
    :cond_9
    move-object v8, v2

    goto/16 :goto_0

    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_2
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_3
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_4
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_5
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_6
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    :catch_7
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v8, v23

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v23

    move-object/from16 v10, v22

    const-string/jumbo v11, "exp"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method static unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "exps":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/kawa/slib/syntaxutils$frame0;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lgnu/kawa/slib/syntaxutils$frame0;-><init>()V

    move-object v1, v6

    .line 110
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v7, v1

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    iput-object v7, v6, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 111
    move-object v6, v0

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    move-object v3, v7

    move-object v2, v6

    .local v2, "len":Ljava/lang/Integer;
    :goto_0
    move-object v6, v1

    move-object v4, v6

    .local v4, "closureEnv":Lgnu/kawa/slib/syntaxutils$frame0;
    sget-object v6, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 113
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_0

    .line 114
    move-object v6, v0

    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v6}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 110
    .local v5, "v":Ljava/lang/Object;
    move-object v6, v1

    move-object v7, v5

    move-object v8, v1

    iget-object v8, v8, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    iput-object v7, v6, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 114
    move-object v6, v2

    .line 112
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v8, v3

    sget-object v9, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .local v3, "i":Ljava/lang/Object;
    move-object v2, v6

    goto :goto_0

    .end local v3    # "i":Ljava/lang/Object;
    .end local v5    # "v":Ljava/lang/Object;
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {v6}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "exps":[Lgnu/expr/Expression;
    return-object v0
.end method

.method static unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 137
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/ApplyExp;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    move-object v1, v8

    .line 139
    .local v1, "fun":Lgnu/expr/Expression;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    invoke-static {v8}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .line 138
    .local v2, "args":Ljava/lang/Object;
    move-object v8, v1

    instance-of v8, v8, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v5, v9

    :try_start_0
    check-cast v8, Lgnu/expr/ReferenceExp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .local v4, "fun":Lgnu/expr/ReferenceExp;
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    .end local v1    # "fun":Lgnu/expr/Expression;
    move-result-object v8

    .end local v4    # "fun":Lgnu/expr/ReferenceExp;
    :goto_0
    move-object v3, v8

    .local v3, "fbinding":Lgnu/expr/Declaration;
    const-string/jumbo v8, "kawa.standard.Scheme"

    const-string/jumbo v9, "applyToArgs"

    invoke-static {v8, v9}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v8

    move-object v4, v8

    .local v4, "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 146
    .local v5, "fval":Ljava/lang/Object;
    move-object v8, v3

    const/4 v9, 0x0

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v6, v8

    .local v6, "x":Z
    move v8, v6

    if-eqz v8, :cond_4

    .line 147
    move-object v8, v4

    const/4 v9, 0x0

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    :goto_2
    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    move v7, v8

    .line 146
    .end local v6    # "x":Z
    .local v7, "x":Z
    move v8, v7

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    move-object v9, v3

    const-string/jumbo v10, "field"

    const-string/jumbo v11, "field"

    const-string/jumbo v12, "getField"

    const-string/jumbo v13, "isField"

    sget-object v14, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-static/range {v8 .. v14}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v4

    iget-object v9, v9, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-ne v8, v9, :cond_5

    .line 150
    .end local v7    # "x":Z
    :goto_3
    move-object v8, v2

    .line 158
    :goto_4
    move-object v0, v8

    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    return-object v0

    .line 138
    .end local v3    # "fbinding":Lgnu/expr/Declaration;
    .end local v4    # "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    .end local v5    # "fval":Ljava/lang/Object;
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v1    # "fun":Lgnu/expr/Expression;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 146
    .end local v1    # "fun":Lgnu/expr/Expression;
    .restart local v3    # "fbinding":Lgnu/expr/Declaration;
    .restart local v4    # "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    .restart local v5    # "fval":Ljava/lang/Object;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 147
    .restart local v6    # "x":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 146
    .end local v6    # "x":Z
    .restart local v7    # "x":Z
    :cond_3
    move v8, v7

    if-eqz v8, :cond_5

    goto :goto_3

    .end local v7    # "x":Z
    .restart local v6    # "x":Z
    :cond_4
    move v8, v6

    if-eqz v8, :cond_5

    goto :goto_3

    .line 151
    .end local v6    # "x":Z
    :cond_5
    move-object v8, v5

    instance-of v8, v8, Lgnu/kawa/functions/Convert;

    if-eqz v8, :cond_6

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    sget-object v11, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_5
    move-object v6, v8

    .line 146
    .local v6, "x":Ljava/lang/Object;
    move-object v8, v6

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_8

    move-object v8, v6

    goto :goto_4

    .line 151
    .end local v6    # "x":Ljava/lang/Object;
    :cond_6
    move-object v8, v5

    instance-of v8, v8, Lgnu/kawa/functions/GetNamedPart;

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    sget-object v11, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_5

    :cond_7
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .line 158
    .restart local v6    # "x":Ljava/lang/Object;
    :cond_8
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x0

    move-object v11, v1

    invoke-static {v11}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    .line 140
    .end local v3    # "fbinding":Lgnu/expr/Declaration;
    .end local v4    # "apply$Mnto$Mnargs":Lgnu/expr/Declaration;
    .end local v5    # "fval":Ljava/lang/Object;
    .end local v6    # "x":Ljava/lang/Object;
    .restart local v1    # "fun":Lgnu/expr/Expression;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v10, v16

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    const-string/jumbo v11, "fun"

    const/4 v12, -0x2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method static unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 116
    move-object/from16 v0, p0

    .local v0, "exp":Lgnu/expr/LetExp;
    new-instance v6, Lgnu/kawa/slib/syntaxutils$frame1;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    invoke-direct {v7}, Lgnu/kawa/slib/syntaxutils$frame1;-><init>()V

    move-object v1, v6

    .line 117
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const/4 v8, 0x0

    sget-object v9, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    aput-object v9, v7, v8

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const/4 v8, 0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v13, v1

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    iput-object v13, v12, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 118
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    sget-object v13, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    move-object v3, v13

    move-object v2, v12

    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v12, v1

    move-object v4, v12

    .local v4, "closureEnv":Lgnu/kawa/slib/syntaxutils$frame1;
    move-object v12, v2

    const/4 v13, 0x0

    if-eq v12, v13, :cond_0

    .line 122
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move-object v14, v3

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    aget-object v13, v13, v14

    invoke-static {v13}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    move-object v5, v12

    .line 117
    .local v5, "v":Lgnu/lists/Pair;
    move-object v12, v1

    move-object v13, v5

    move-object v14, v1

    iget-object v14, v14, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v13, v14}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    iput-object v13, v12, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 119
    move-object v12, v2

    invoke-virtual {v12}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v12

    .line 120
    sget-object v13, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object v14, v3

    sget-object v15, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v3, v13

    .local v3, "i":Ljava/lang/Object;
    move-object v2, v12

    goto :goto_0

    .end local v3    # "i":Ljava/lang/Object;
    .end local v5    # "v":Lgnu/lists/Pair;
    :cond_0
    move-object v12, v1

    iget-object v12, v12, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v12}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v12

    aput-object v12, v10, v11

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-static {v15}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v15, v13, v14

    invoke-static {v12}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "exp":Lgnu/expr/LetExp;
    return-object v0
.end method

.method static unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/QuoteExp;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 128
    move-object v1, v4

    .line 129
    .local v1, "val":Ljava/lang/Object;
    move-object v4, v1

    invoke-static {v4}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_0
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .local v2, "val":Lgnu/math/Numeric;
    move-object v4, v2

    move-object v3, v4

    .end local v1    # "val":Ljava/lang/Object;
    .end local v2    # "val":Lgnu/math/Numeric;
    :goto_0
    move-object v4, v3

    :goto_1
    move-object v0, v4

    .end local v0    # "exp":Lgnu/expr/QuoteExp;
    return-object v0

    .restart local v0    # "exp":Lgnu/expr/QuoteExp;
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    move-object v4, v1

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_2
    move v2, v4

    .local v2, "val":Z
    move v4, v2

    if-eqz v4, :cond_2

    .end local v1    # "val":Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    move-object v3, v4

    goto :goto_0

    .end local v2    # "val":Z
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .end local v1    # "val":Ljava/lang/Object;
    .restart local v2    # "val":Z
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .end local v2    # "val":Z
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_3
    move-object v4, v1

    instance-of v4, v4, Lgnu/text/Char;

    if-eqz v4, :cond_4

    move-object v4, v1

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_2
    check-cast v4, Lgnu/text/Char;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v4

    .local v2, "val":Lgnu/text/Char;
    move-object v4, v2

    move-object v3, v4

    goto :goto_0

    .end local v2    # "val":Lgnu/text/Char;
    :cond_4
    move-object v4, v1

    instance-of v4, v4, Lgnu/expr/Keyword;

    if-eqz v4, :cond_5

    move-object v4, v1

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_3
    check-cast v4, Lgnu/expr/Keyword;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v4

    .local v2, "val":Lgnu/expr/Keyword;
    move-object v4, v2

    move-object v3, v4

    goto :goto_0

    .end local v2    # "val":Lgnu/expr/Keyword;
    :cond_5
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    move-object v4, v1

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_4
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v4

    .local v2, "val":Ljava/lang/CharSequence;
    move-object v4, v2

    move-object v3, v4

    goto :goto_0

    .end local v2    # "val":Ljava/lang/CharSequence;
    :cond_6
    move-object v4, v1

    sget-object v5, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne v4, v5, :cond_7

    move-object v4, v1

    move-object v3, v4

    goto :goto_0

    :cond_7
    move-object v4, v1

    sget-object v5, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    if-ne v4, v5, :cond_8

    move-object v4, v1

    move-object v3, v4

    goto :goto_0

    :cond_8
    move-object v4, v1

    instance-of v4, v4, Lgnu/bytecode/Type;

    if-eqz v4, :cond_9

    move-object v4, v1

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_5
    check-cast v4, Lgnu/bytecode/Type;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v2, v4

    .line 133
    .local v2, "val":Lgnu/bytecode/Type;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    .end local v1    # "val":Ljava/lang/Object;
    move-result-object v4

    .line 128
    move-object v3, v4

    .end local v2    # "val":Lgnu/bytecode/Type;
    :goto_4
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const-string/jumbo v8, "<~a>"

    aput-object v8, v6, v7

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v4

    goto/16 :goto_1

    .line 129
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_9
    move-object v4, v1

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_a

    move-object v4, v1

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_6
    check-cast v4, Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v2, v4

    .line 134
    .local v2, "val":Ljava/lang/Class;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .end local v1    # "val":Ljava/lang/Object;
    move-result-object v4

    move-object v3, v4

    goto :goto_4

    .line 129
    .end local v2    # "val":Ljava/lang/Class;
    .restart local v1    # "val":Ljava/lang/Object;
    :cond_a
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v10, v8, v9

    invoke-static {v7}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "val"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "val"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "val"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "val"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "val"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "val"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_6
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v11, v4

    move-object v12, v5

    move-object v4, v12

    move-object v5, v11

    move-object v6, v12

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    const-string/jumbo v7, "val"

    const/4 v8, -0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 67
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gez v6, :cond_1

    invoke-static {v4, v5}, Lgnu/kawa/slib/syntaxutils;->expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_1
    return-object v0

    .line 4294967295
    .line 67
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move v7, v3

    move-object v8, v2

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    goto :goto_0
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 67
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x5

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    .line 4294967295
    .line 67
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/syntaxutils;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 67
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
