.class public Lkawa/lib/prim_syntax;
.super Lgnu/expr/ModuleBody;
.source "prim_syntax.scm"


# static fields
.field public static final $instance:Lkawa/lib/prim_syntax;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lkawa/lang/SyntaxRules;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lkawa/lang/SyntaxRules;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxPattern;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxPattern;

.field static final Lit18:Lkawa/lang/SyntaxTemplate;

.field static final Lit19:Lkawa/lang/SyntaxTemplate;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lkawa/lang/SyntaxPattern;

.field static final Lit22:Lkawa/lang/SyntaxTemplate;

.field static final Lit23:Lkawa/lang/SyntaxPattern;

.field static final Lit24:Lkawa/lang/SyntaxTemplate;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lkawa/lang/SyntaxPattern;

.field static final Lit27:Lkawa/lang/SyntaxTemplate;

.field static final Lit28:Lkawa/lang/SyntaxTemplate;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit30:Lkawa/lang/SyntaxPattern;

.field static final Lit31:Lkawa/lang/SyntaxTemplate;

.field static final Lit32:Lkawa/lang/SyntaxTemplate;

.field static final Lit33:Lkawa/lang/SyntaxTemplate;

.field static final Lit34:Lkawa/lang/SyntaxPattern;

.field static final Lit35:Lkawa/lang/SyntaxPattern;

.field static final Lit36:Lkawa/lang/SyntaxTemplate;

.field static final Lit37:Lkawa/lang/SyntaxTemplate;

.field static final Lit38:Lkawa/lang/SyntaxTemplate;

.field static final Lit39:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lkawa/lang/SyntaxTemplate;

.field static final Lit41:Lkawa/lang/SyntaxTemplate;

.field static final Lit42:Lkawa/lang/SyntaxTemplate;

.field static final Lit43:Lkawa/lang/SyntaxPattern;

.field static final Lit44:Lkawa/lang/SyntaxPattern;

.field static final Lit45:Lgnu/mapping/SimpleSymbol;

.field static final Lit46:Lgnu/mapping/SimpleSymbol;

.field static final Lit47:Lgnu/mapping/SimpleSymbol;

.field static final Lit48:Lgnu/mapping/SimpleSymbol;

.field static final Lit49:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit50:Lgnu/mapping/SimpleSymbol;

.field static final Lit51:Lgnu/math/IntNum;

.field static final Lit52:Lgnu/math/IntNum;

.field static final Lit53:Lgnu/math/IntNum;

.field static final Lit54:Lgnu/math/IntNum;

.field static final Lit55:Lgnu/math/IntNum;

.field static final Lit56:Lgnu/math/IntNum;

.field static final Lit57:Lgnu/mapping/SimpleSymbol;

.field static final Lit58:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final define:Lkawa/lang/Macro;

.field public static final define$Mnconstant:Lkawa/lang/Macro;

.field public static final define$Mnprivate:Lkawa/lang/Macro;

.field public static final define$Mnsyntax:Lkawa/lang/Macro;

.field public static final if:Lkawa/lang/Macro;

.field public static final letrec:Lkawa/lang/Macro;

.field public static final syntax$Mn$Grexpression:Lkawa/lang/Macro;

.field public static final syntax$Mnbody$Mn$Grexpression:Lkawa/lang/Macro;

.field public static final syntax$Mnerror:Lgnu/expr/ModuleMethod;

.field public static final try$Mncatch:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "lambda"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit58:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "%define-syntax"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->Lit56:Lgnu/math/IntNum;

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->Lit55:Lgnu/math/IntNum;

    const/4 v1, 0x4

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->Lit54:Lgnu/math/IntNum;

    const/4 v1, 0x5

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->Lit53:Lgnu/math/IntNum;

    const/16 v1, 0x8

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->Lit52:Lgnu/math/IntNum;

    const/16 v1, 0x9

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->Lit51:Lgnu/math/IntNum;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "%define"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "::"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "quasiquote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit48:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "kawa.lang.SyntaxForms"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit47:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "$lookup$"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "set!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit45:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u001b"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit44:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u001c\u000c\u001f\u0008#"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit43:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    const-string/jumbo v4, ":"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit42:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    const-string/jumbo v4, "\u0011\u0018\u0004\t\u001b\u00083"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v21, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    const/4 v7, 0x0

    sget-object v8, Lkawa/lib/prim_syntax;->Lit45:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit41:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    const-string/jumbo v4, "\t\u001b\t#\t+\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v21, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    const/4 v7, 0x0

    sget-object v8, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm"

    const v11, 0x7303e

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit40:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "L\u000c\u001f\u000c\'\u000c/\u000c7\u0008;"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x8

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit39:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const-string/jumbo v4, "*"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit38:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const-string/jumbo v4, "\u0011\u0018\u0004\t\u001b\u0008#"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v21, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    const/4 v7, 0x0

    sget-object v8, Lkawa/lib/prim_syntax;->Lit45:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit37:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const-string/jumbo v4, "\t\u001b\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v21, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    const/4 v7, 0x0

    sget-object v8, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm"

    const v11, 0x6e022

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit36:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, ",\u000c\u001f\u000c\'\u0008+"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit35:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit34:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000"

    const-string/jumbo v4, "\u0012"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit33:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v21, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v8

    move-object/from16 v8, v21

    move-object/from16 v9, v21

    const-string/jumbo v10, "%let"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm"

    const v11, 0x7d00b

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit32:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0000"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit31:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u0013"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit30:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "letrec"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0003\u0003\u0002"

    const-string/jumbo v4, "(\u0008\u0015A\u0008\t\u0013\u0011\u0018\u0004\u0008\u001b\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v21, v5

    move-object/from16 v5, v21

    move-object/from16 v6, v21

    const/4 v7, 0x0

    sget-object v8, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit28:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0003\u0003\u0002"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit27:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f-\u000c\u0017\u000c\u001f#\u0010\u0018\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit26:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "try-catch"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0000"

    const-string/jumbo v4, "\n"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit24:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u000c\u0007\u000b"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit23:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string/jumbo v4, "#"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u000c\'+"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit21:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v4, "\u001b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v4, "\u0013"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit19:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit18:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit17:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0001"

    const-string/jumbo v4, "\u0013"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u0001\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit14:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "if"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const-string/jumbo v8, "syntax-body->expression"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lkawa/lib/prim_syntax;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lkawa/lib/prim_syntax;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lkawa/lib/prim_syntax;->Lit48:Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    const-string/jumbo v20, "rewriteBody"

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

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm"

    const v18, 0x42007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit12:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const-string/jumbo v8, "syntax->expression"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lkawa/lib/prim_syntax;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lkawa/lib/prim_syntax;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lkawa/lib/prim_syntax;->Lit48:Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    const-string/jumbo v20, "rewrite"

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

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm"

    const v18, 0x3d007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit10:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "syntax-error"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const-string/jumbo v8, "define-constant"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lkawa/lib/prim_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x1

    sget-object v6, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x2

    sget-object v6, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x5

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\n\u000c\u001f\u000c\'\u0008"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x5

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/prim_syntax;->Lit51:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/prim_syntax;->Lit52:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x2

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0000\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    const/16 v15, 0xa

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x3

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u0002\u000c\u000f\u000c\u0017\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit51:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x4

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit52:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const-string/jumbo v8, "define-private"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lkawa/lib/prim_syntax;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x1

    sget-object v6, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x2

    sget-object v6, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x5

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\n\u000c\u001f\u000c\'\u0008"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x5

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/prim_syntax;->Lit53:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/prim_syntax;->Lit54:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x2

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0000\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    const/4 v15, 0x6

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x3

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u0002\u000c\u000f\u000c\u0017\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit53:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x4

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit54:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const-string/jumbo v8, "define"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lkawa/lib/prim_syntax;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x1

    sget-object v6, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x2

    sget-object v6, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x5

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\n\u000c\u001f\u000c\'\u0008"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x5

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/prim_syntax;->Lit55:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/prim_syntax;->Lit56:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x2

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0000\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x3

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u0002\u000c\u000f\u000c\u0017\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit55:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x4

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit56:Lgnu/math/IntNum;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    const-string/jumbo v8, "define-syntax"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lkawa/lib/prim_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v21, v3

    move-object/from16 v3, v21

    move-object/from16 v4, v21

    const/4 v5, 0x1

    sget-object v6, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x4

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018l\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u001b#"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x5

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0000\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0008\u0011\u0018\u0014\t\u001a\""

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/prim_syntax;->Lit58:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0008\u001b"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x2

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0000\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\t\n\u0012"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/prim_syntax;->Lit58:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x3

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u0003\u0008\u000b"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lib/prim_syntax;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    invoke-direct {v2}, Lkawa/lib/prim_syntax;-><init>()V

    sput-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->define$Mnsyntax:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->define:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->define$Mnprivate:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->define$Mnconstant:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lkawa/lib/prim_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->syntax$Mnerror:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit10:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->syntax$Mn$Grexpression:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/prim_syntax;->Lit12:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->syntax$Mnbody$Mn$Grexpression:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v21

    move-object v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object/from16 v21, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v21

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:69"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->if:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v21

    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object/from16 v21, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v21

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:89"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->try$Mncatch:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v21

    move-object v4, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object/from16 v21, v2

    move-object/from16 v2, v21

    move-object/from16 v3, v21

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:98"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/prim_syntax;->letrec:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

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

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    move-object v1, v4

    sget-object v4, Lkawa/lib/prim_syntax;->Lit14:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    new-instance v4, Lgnu/expr/IfExp;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v3, v6

    sget-object v6, Lkawa/lib/prim_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v6

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v7

    move-object v3, v7

    sget-object v7, Lkawa/lib/prim_syntax;->Lit16:Lkawa/lang/SyntaxTemplate;

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .line 85
    :goto_0
    move-object v0, v4

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0

    .line 72
    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lkawa/lib/prim_syntax;->Lit17:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    new-instance v4, Lgnu/expr/IfExp;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v3, v6

    sget-object v6, Lkawa/lib/prim_syntax;->Lit18:Lkawa/lang/SyntaxTemplate;

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v6

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v7

    move-object v3, v7

    sget-object v7, Lkawa/lib/prim_syntax;->Lit19:Lkawa/lang/SyntaxTemplate;

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v3, v8

    sget-object v8, Lkawa/lib/prim_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lkawa/lib/prim_syntax;->Lit21:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lkawa/lib/prim_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "too many expressions for \'if\'"

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_2

    check-cast v5, [Ljava/lang/Object;

    :goto_1
    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const/4 v8, 0x0

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    aput-object v8, v6, v7

    goto :goto_1

    :cond_3
    sget-object v4, Lkawa/lib/prim_syntax;->Lit23:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 85
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lkawa/lib/prim_syntax;->Lit24:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "too few expressions for \'if\'"

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    check-cast v5, [Ljava/lang/Object;

    :goto_2
    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const/4 v8, 0x0

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    aput-object v8, v6, v7

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "syntax-case"

    move-object v5, v0

    invoke-static {v4, v5}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    move-object v1, v4

    sget-object v4, Lkawa/lib/prim_syntax;->Lit26:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lkawa/lib/prim_syntax;->Lit27:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v5

    move-object v3, v5

    sget-object v5, Lkawa/lib/prim_syntax;->Lit28:Lkawa/lang/SyntaxTemplate;

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkawa/standard/try_catch;->rewrite(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v4, "syntax-case"

    move-object v5, v0

    invoke-static {v4, v5}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .prologue
    .line 98
    move-object/from16 v0, p0

    .local v0, "form":Ljava/lang/Object;
    new-instance v4, Lkawa/lib/prim_syntax$frame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    invoke-direct {v5}, Lkawa/lib/prim_syntax$frame;-><init>()V

    move-object v1, v4

    .line 99
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v6, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    iput-object v6, v5, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    move-object v5, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    iput-object v5, v4, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 100
    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v5, v17

    move-object/from16 v6, v16

    iput-object v6, v5, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    move-object v2, v4

    sget-object v4, Lkawa/lib/prim_syntax;->Lit30:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    move-object v4, v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v5

    move-object v3, v5

    sget-object v5, Lkawa/lib/prim_syntax;->Lit31:Lkawa/lang/SyntaxTemplate;

    move-object v6, v1

    iget-object v6, v6, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkawa/lib/prim_syntax$frame;->lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 123
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    invoke-static {v5}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v5

    iput-object v5, v4, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 124
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    invoke-static {v5}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v5

    iput-object v5, v4, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    .line 125
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    const/4 v6, 0x0

    sget-object v7, Lkawa/lib/prim_syntax;->Lit32:Lkawa/lang/SyntaxTemplate;

    move-object v8, v1

    iget-object v8, v8, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x0

    move-object v10, v1

    iget-object v10, v10, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    aput-object v10, v8, v9

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    aput-object v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    sget-object v13, Lkawa/lib/prim_syntax;->Lit33:Lkawa/lang/SyntaxTemplate;

    move-object v14, v1

    iget-object v14, v14, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    move-object v15, v3

    invoke-virtual {v13, v14, v15}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "form":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v4, "syntax-case"

    move-object v5, v0

    invoke-static {v4, v5}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public static varargs syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "id":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "msg":[Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/standard/syntax_error;->error(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "id":Ljava/lang/Object;
    return-object v0
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

    .line 98
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/prim_syntax;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 89
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/prim_syntax;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 98
    :pswitch_2
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/prim_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

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

    .line 55
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

    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    :goto_1
    return-object v0

    .line 4294967295
    .line 55
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

    .line 69
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 98
    :goto_0
    return v0

    :pswitch_0
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

    .line 89
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

    .line 69
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
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 55
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
    .line 55
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
    .line 3
    move-object v0, p0

    .local v0, "this":Lkawa/lib/prim_syntax;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 55
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
