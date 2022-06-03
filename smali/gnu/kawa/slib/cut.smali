.class public Lgnu/kawa/slib/cut;
.super Lgnu/expr/ModuleBody;
.source "cut.scm"


# static fields
.field public static final $Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

.field public static final $Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/cut;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final cut:Lkawa/lang/Macro;

.field public static final cute:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .prologue
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "rest-slot"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "apply"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "<>"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "x"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "lambda"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "let"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "<...>"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v18

    const-string/jumbo v7, "cute"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v18

    sput-object v6, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x0

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018\u0003"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0000"

    const-string/jumbo v10, "\u0011\u0018\u0004\t\u0010\t\u0010\t\u0010\u0002"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "srfi-26-internal-cute"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    sput-object v15, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x0

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v18

    const-string/jumbo v7, "cut"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v18

    sput-object v6, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x0

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018\u0003"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0000"

    const-string/jumbo v10, "\u0011\u0018\u0004\t\u0010\t\u0010\u0002"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "srfi-26-internal-cut"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    sput-object v15, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v3, 0x4

    new-array v3, v3, [Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x0

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0003\u0001\u0001\u0003"

    const-string/jumbo v10, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c\u0019\u0008\u0005\u0003\u0008\t\u0013\u0008\u001d\u001b"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x1

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\u0002\u0008"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0003\u0001\u0001\u0003"

    const-string/jumbo v10, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c)\u0011\u0005\u0003\u0018\u0014\u0008\u0011\u0018\u001c\t\u0013\u0011\u001d\u001b\u0018$"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x3

    sget-object v14, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x4

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v17, 0x57048

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x2

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u0002\u001b"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0003\u0001\u0003\u0000"

    const-string/jumbo v10, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\t\u000b)\u0011\u0015\u0013\u0018\u0014\u001a"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v17, 0x5d016

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v17, 0x5d03b

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x3

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018\u000c\u0007\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f#"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x5

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0001\u0001\u0003\u0001\u0000"

    const-string/jumbo v10, "\u0011\u0018\u0004\t\u00039)\u0011\u0018\u000c\u0008\u001b\u000b)\u0011\u0015\u0013\u0018\u0014\""

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v17, 0x62039

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x0

    sget-object v5, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    move-object/from16 v18, v2

    move-object/from16 v2, v18

    move-object/from16 v3, v18

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v3, 0x4

    new-array v3, v3, [Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x0

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0003\u0001\u0003"

    const-string/jumbo v10, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003\u0008)\u0011\u0018\u000c\u0008\u000b\u0008\u0015\u0013"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "begin"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x1

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u0002\u0008"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0003\u0001\u0003"

    const-string/jumbo v10, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\u0008\u0011\u0018\u0014\t\u000b\u0011\u0015\u0013\u0018\u001c"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x3

    sget-object v14, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v17, 0x3d03e

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x2

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0002\u0013"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0003\u0003\u0000"

    const-string/jumbo v10, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c)\u0011\r\u000b\u0018\u0014\u0012"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v17, 0x4102b

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    const v17, 0x4103c

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    move-object/from16 v18, v3

    move-object/from16 v3, v18

    move-object/from16 v4, v18

    const/4 v5, 0x3

    new-instance v6, Lkawa/lang/SyntaxRule;

    move-object/from16 v18, v6

    move-object/from16 v6, v18

    move-object/from16 v7, v18

    new-instance v8, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string/jumbo v10, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0003\u0003\u0001\u0000"

    const-string/jumbo v10, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003)\u0011\r\u000b\u0008\u0013\u001a"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/cut;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-direct {v1}, Lgnu/kawa/slib/cut;-><init>()V

    sput-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

    .line 51
    sget-object v0, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->cut:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/cut;->cute:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

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


# virtual methods
.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/cut;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
