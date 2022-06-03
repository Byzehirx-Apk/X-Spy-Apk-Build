.class public Lkawa/lib/parameters;
.super Lgnu/expr/ModuleBody;
.source "parameters.scm"


# static fields
.field public static final $Prvt$as$Mnlocation$Pc:Lgnu/expr/ModuleMethod;

.field public static final $Prvt$parameterize$Pc:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/parameters;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final make$Mnparameter:Lgnu/expr/ModuleMethod;

.field public static final parameterize:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .prologue
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "save"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "quasiquote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "gnu.mapping.Location"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "$lookup$"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "v"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "p"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v22, v3

    move-object/from16 v3, v22

    move-object/from16 v4, v22

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v22

    const-string/jumbo v8, "parameterize"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v6

    move-object/from16 v6, v22

    move-object/from16 v7, v22

    sput-object v7, Lkawa/lib/parameters;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x2

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v22, v4

    move-object/from16 v4, v22

    move-object/from16 v5, v22

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v22, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v22, v9

    move-object/from16 v9, v22

    move-object/from16 v10, v22

    const-string/jumbo v11, "\u000c\u0018\u000c\u0008\u0003"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0002"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v22, v4

    move-object/from16 v4, v22

    move-object/from16 v5, v22

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v22, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v22, v9

    move-object/from16 v9, v22

    move-object/from16 v10, v22

    const-string/jumbo v11, "\u000c\u0018<,\u000c\u0007\u000c\u000f\u0008\u0013\u001b"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0000\u0000"

    const-string/jumbo v11, "\u0011\u0018\u00041!\t\u0003\u0008\u000b\u0012\t\u0010\u001a"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "parameterize%"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    sput-object v16, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/parameters;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v22, v3

    move-object/from16 v3, v22

    move-object/from16 v4, v22

    const/4 v5, 0x0

    sget-object v6, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x2

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v22, v4

    move-object/from16 v4, v22

    move-object/from16 v5, v22

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v22, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v22, v9

    move-object/from16 v9, v22

    move-object/from16 v10, v22

    const-string/jumbo v11, "\u000c\u0018\u000c\u0008\u000c\u0007\u000b"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004!\u0011\u0018\u000c\n\u0008\u0011\u0018\u000c\u0003"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "try-finally"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/parameters;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v22, v4

    move-object/from16 v4, v22

    move-object/from16 v5, v22

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v22, v7

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v22, v9

    move-object/from16 v9, v22

    move-object/from16 v10, v22

    const-string/jumbo v11, "\u000c\u0018<,\u000c\u0007\u000c\u000f\u0008\u0013\u000c\u001f#"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x5

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0000\u0001\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004\u00c1y\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\u0008\u0003)\u0011\u0018,\u0008\u000b\u00184\u0008\u0011\u0018<\t\u0012!\u0011\u0018D\u001b\""

    const/16 v12, 0x9

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "let*"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "::"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x3

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "<gnu.mapping.Location>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x4

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "as-location%"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    sput-object v16, Lkawa/lib/parameters;->Lit1:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x5

    sget-object v15, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x6

    sget-object v15, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v19, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    const-string/jumbo v21, "setWithSave"

    invoke-direct/range {v20 .. v21}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v19 .. v20}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v18 .. v19}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v19, 0x1e00d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lkawa/lib/parameters;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v21, 0x1e030

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v20, 0x1e02e

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v19, 0x1e00c

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v19, 0x1e00c

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v18, 0x1e006

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v18, 0x1e006

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, 0x7

    sget-object v15, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/16 v14, 0x8

    sget-object v15, Lkawa/lib/parameters;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lkawa/lib/parameters;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lkawa/lib/parameters;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const-string/jumbo v20, "setRestore"

    invoke-direct/range {v19 .. v20}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v18 .. v19}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v17 .. v18}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v18, 0x2000b

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lkawa/lib/parameters;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lkawa/lib/parameters;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v20, 0x2002d

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v19, 0x2002b

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/parameters.scm"

    const v18, 0x2000a

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/parameters;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    const-string/jumbo v3, "make-parameter"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/parameters;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lib/parameters;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    invoke-direct {v2}, Lkawa/lib/parameters;-><init>()V

    sput-object v1, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    sget-object v3, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/parameters;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/parameters;->make$Mnparameter:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v22, v1

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lkawa/lib/parameters;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/parameters;->$Prvt$as$Mnlocation$Pc:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/parameters;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/parameters;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/parameters;->$Prvt$parameterize$Pc:Lkawa/lang/Macro;

    .line 2
    sget-object v1, Lkawa/lib/parameters;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/parameters;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/parameters;->parameterize:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/parameters;->$instance:Lkawa/lib/parameters;

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

.method public static asLocation$Pc(Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 11

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "param":Ljava/lang/Object;
    move-object v3, v0

    instance-of v3, v3, Lgnu/mapping/LocationProc;

    if-eqz v3, :cond_1

    .line 15
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    :try_start_0
    check-cast v3, Lgnu/mapping/LocationProc;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v3

    .line 16
    :goto_0
    move-object v1, v3

    .line 17
    .local v1, "loc":Lgnu/mapping/Location;
    move-object v3, v1

    instance-of v3, v3, Lgnu/mapping/ThreadLocation;

    if-eqz v3, :cond_0

    .line 18
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    :try_start_1
    check-cast v3, Lgnu/mapping/ThreadLocation;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v3}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v3

    move-object v1, v3

    .line 19
    .end local v1    # "loc":Lgnu/mapping/Location;
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Location;

    move-object v0, v3

    .end local v0    # "param":Ljava/lang/Object;
    return-object v0

    .line 16
    .restart local v0    # "param":Ljava/lang/Object;
    :cond_1
    move-object v3, v0

    check-cast v3, Lgnu/mapping/Location;

    goto :goto_0

    .line 15
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "gnu.mapping.LocationProc.getLocation()"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 18
    .restart local v1    # "loc":Lgnu/mapping/Location;
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "gnu.mapping.ThreadLocation.getLocation()"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static makeParameter(Ljava/lang/Object;)Lgnu/mapping/LocationProc;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;
    .locals 12

    .prologue
    .line 6
    move-object v0, p0

    .local v0, "init":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "converter":Ljava/lang/Object;
    move-object v4, v1

    const/4 v5, 0x0

    if-eq v4, v5, :cond_0

    .line 8
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 9
    :cond_0
    new-instance v4, Lgnu/mapping/ThreadLocation;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Lgnu/mapping/ThreadLocation;-><init>()V

    move-object v2, v4

    .line 10
    .local v2, "loc":Lgnu/mapping/ThreadLocation;
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 11
    new-instance v4, Lgnu/mapping/LocationProc;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v2

    move-object v7, v1

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v3, v8

    :try_start_0
    check-cast v7, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v5, v6, v7}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)V

    move-object v0, v4

    .end local v0    # "init":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "init":Ljava/lang/Object;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "gnu.mapping.LocationProc.<init>(gnu.mapping.Location,gnu.mapping.Procedure)"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 13
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 6
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 13
    :pswitch_2
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/parameters;->asLocation$Pc(Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 6
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/parameters;->makeParameter(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/LocationProc;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 6
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 6
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 13
    :goto_0
    return v0

    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 6
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 10

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 6
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    .line 4294967295
    .line 6
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 2
    move-object v0, p0

    .local v0, "this":Lkawa/lib/parameters;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 6
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
