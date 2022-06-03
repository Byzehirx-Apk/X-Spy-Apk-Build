.class public Lkawa/lib/reflection;
.super Lgnu/expr/ModuleBody;
.source "reflection.scm"


# static fields
.field public static final $instance:Lkawa/lib/reflection;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lkawa/lang/SyntaxRules;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lkawa/lang/SyntaxRules;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lkawa/lang/SyntaxRules;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lkawa/lang/SyntaxRules;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lkawa/lang/SyntaxRules;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lkawa/lang/SyntaxRules;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lkawa/lang/SyntaxRules;

.field static final Lit3:Lkawa/lang/SyntaxPattern;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/math/IntNum;

.field static final Lit34:Lgnu/math/IntNum;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final make$Mnrecord$Mntype:Lgnu/expr/ModuleMethod;

.field public static final primitive$Mnarray$Mnget:Lkawa/lang/Macro;

.field public static final primitive$Mnarray$Mnlength:Lkawa/lang/Macro;

.field public static final primitive$Mnarray$Mnnew:Lkawa/lang/Macro;

.field public static final primitive$Mnarray$Mnset:Lkawa/lang/Macro;

.field public static final primitive$Mnconstructor:Lkawa/lang/Macro;

.field public static final primitive$Mnget$Mnfield:Lkawa/lang/Macro;

.field public static final primitive$Mnget$Mnstatic:Lkawa/lang/Macro;

.field public static final primitive$Mnset$Mnfield:Lkawa/lang/Macro;

.field public static final primitive$Mnset$Mnstatic:Lkawa/lang/Macro;

.field public static final record$Mnaccessor:Lgnu/expr/ModuleMethod;

.field public static final record$Mnconstructor:Lgnu/expr/ModuleMethod;

.field public static final record$Mnmodifier:Lgnu/expr/ModuleMethod;

.field public static final record$Mnpredicate:Lgnu/expr/ModuleMethod;

.field public static final record$Mntype$Mndescriptor:Lgnu/expr/ModuleMethod;

.field public static final record$Mntype$Mnfield$Mnnames:Lgnu/expr/ModuleMethod;

.field public static final record$Mntype$Mnname:Lgnu/expr/ModuleMethod;

.field public static final record$Qu:Lgnu/expr/ModuleMethod;

.field public static final subtype$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->Lit34:Lgnu/math/IntNum;

    const/16 v1, 0x9

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->Lit33:Lgnu/math/IntNum;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "make"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "constant-fold"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "subtype?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-set-static"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit28:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<gnu.kawa.reflect.StaticSet>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x3

    sget-object v15, Lkawa/lib/reflection;->Lit33:Lgnu/math/IntNum;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm"

    const v18, 0x6f017

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit29:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-get-static"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<gnu.kawa.reflect.StaticGet>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x3

    sget-object v15, Lkawa/lib/reflection;->Lit33:Lgnu/math/IntNum;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm"

    const v18, 0x69017

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit27:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-set-field"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<kawa.lang.SetFieldProc>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x3

    sget-object v15, Lkawa/lib/reflection;->Lit34:Lgnu/math/IntNum;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm"

    const v18, 0x62017

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit25:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-get-field"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<kawa.lang.GetFieldProc>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x3

    sget-object v15, Lkawa/lib/reflection;->Lit34:Lgnu/math/IntNum;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm"

    const v18, 0x5c017

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit23:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-array-length"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<gnu.kawa.reflect.ArrayLength>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit21:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-array-get"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<gnu.kawa.reflect.ArrayGet>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit19:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-array-set"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit16:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<gnu.kawa.reflect.ArraySet>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit17:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v19, v3

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-string/jumbo v8, "primitive-array-new"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    sput-object v7, Lkawa/lib/reflection;->Lit14:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v19, v7

    move-object/from16 v7, v19

    move-object/from16 v8, v19

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "<gnu.kawa.reflect.ArrayNew>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit15:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record-type-field-names"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record-type-name"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record-type-descriptor"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record-predicate"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record-modifier"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record-accessor"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "record-constructor"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "make-record-type"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0011\u0018\u0004\u0019\u0008\u001d\u001b\u0011\u0018\u000c\t\u000b\u0008\u0011\u0018\u0014\t\u000b\u0008\u0015\u0011\u0018\u001c\t\u0013\u0008\u001b"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v19, v5

    move-object/from16 v5, v19

    move-object/from16 v6, v19

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    const-string/jumbo v10, "lambda"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    move-object/from16 v19, v5

    move-object/from16 v5, v19

    move-object/from16 v6, v19

    const/4 v7, 0x1

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    const-string/jumbo v10, "::"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    move-object/from16 v19, v5

    move-object/from16 v5, v19

    move-object/from16 v6, v19

    const/4 v7, 0x2

    sget-object v8, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    move-object/from16 v19, v5

    move-object/from16 v5, v19

    move-object/from16 v6, v19

    const/4 v7, 0x3

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    const-string/jumbo v10, "as"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "\r\u001f\u0018\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit3:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "\u0001\u0001\u0003"

    const-string/jumbo v4, "\u0008\u0015\u0013"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f,\r\u0017\u0010\u0008\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    const-string/jumbo v3, "primitive-constructor"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lib/reflection;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    invoke-direct {v2}, Lkawa/lib/reflection;-><init>()V

    sput-object v1, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    sget-object v1, Lkawa/lib/reflection;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v2

    move-object/from16 v2, v19

    move-object/from16 v3, v19

    sget-object v4, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    move-object v0, v4

    move-object v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnconstructor:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lkawa/lib/reflection;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->make$Mnrecord$Mntype:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lkawa/lib/reflection;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mnconstructor:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lkawa/lib/reflection;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mnaccessor:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/4 v4, 0x7

    sget-object v5, Lkawa/lib/reflection;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mnmodifier:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lkawa/lib/reflection;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lkawa/lib/reflection;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mnpredicate:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/16 v4, 0xa

    sget-object v5, Lkawa/lib/reflection;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mntype$Mndescriptor:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/16 v4, 0xb

    sget-object v5, Lkawa/lib/reflection;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mntype$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/16 v4, 0xc

    sget-object v5, Lkawa/lib/reflection;->Lit13:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mntype$Mnfield$Mnnames:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/reflection;->Lit14:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit15:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnarray$Mnnew:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/reflection;->Lit16:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit17:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnarray$Mnset:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/reflection;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit19:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnarray$Mnget:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/reflection;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit21:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnarray$Mnlength:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/reflection;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit23:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnget$Mnfield:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/reflection;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit25:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnset$Mnfield:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/reflection;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit27:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnget$Mnstatic:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/reflection;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/reflection;->Lit29:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->primitive$Mnset$Mnstatic:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v19, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v19

    move-object v3, v0

    const/16 v4, 0xd

    sget-object v5, Lkawa/lib/reflection;->Lit30:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->subtype$Qu:Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

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

.method public static isRecord(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lkawa/lang/Record;

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static isSubtype(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "t1":Lgnu/bytecode/Type;
    move-object v1, p1

    .local v1, "t2":Lgnu/bytecode/Type;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    move v0, v2

    .end local v0    # "t1":Lgnu/bytecode/Type;
    return v0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v6, v0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    move-object v1, v6

    sget-object v6, Lkawa/lib/reflection;->Lit1:Lkawa/lang/SyntaxPattern;

    move-object v7, v0

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v4, v6

    sget-object v6, Lkawa/lib/reflection;->Lit2:Lkawa/lang/SyntaxTemplate;

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkawa/lib/std_syntax;->generateTemporaries(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x4

    move-object v8, v2

    invoke-static {v7, v8}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    move-object v3, v6

    sget-object v6, Lkawa/lib/reflection;->Lit3:Lkawa/lang/SyntaxPattern;

    move-object v7, v3

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v5, v6

    sget-object v6, Lkawa/lib/reflection;->Lit4:Lkawa/lang/SyntaxTemplate;

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    move-object v0, v6

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "form":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v6, "syntax-case"

    move-object v7, v3

    invoke-static {v6, v7}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "syntax-case"

    move-object v7, v0

    invoke-static {v6, v7}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
.end method

.method public static makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;
    .locals 4

    .prologue
    .line 14
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fnames":Lgnu/lists/LList;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/lang/Record;->makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static recordAccessor(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/GetFieldProc;
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "class":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    new-instance v2, Lkawa/lang/GetFieldProc;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkawa/lang/GetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "class":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public static recordConstructor(Lgnu/bytecode/ClassType;)Lkawa/lang/RecordConstructor;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkawa/lib/reflection;->recordConstructor(Lgnu/bytecode/ClassType;Ljava/lang/Object;)Lkawa/lang/RecordConstructor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static recordConstructor(Lgnu/bytecode/ClassType;Ljava/lang/Object;)Lkawa/lang/RecordConstructor;
    .locals 7

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "cl":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "flds":Ljava/lang/Object;
    new-instance v2, Lkawa/lang/RecordConstructor;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "cl":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public static recordModifier(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/SetFieldProc;
    .locals 7

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "class":Lgnu/bytecode/ClassType;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    new-instance v2, Lkawa/lang/SetFieldProc;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lkawa/lang/SetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "class":Lgnu/bytecode/ClassType;
    return-object v0
.end method

.method public static recordPredicate(Ljava/lang/Object;)Lgnu/mapping/Procedure;
    .locals 5

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "rtype":Ljava/lang/Object;
    new-instance v2, Lkawa/lib/reflection$frame;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lkawa/lib/reflection$frame;-><init>()V

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lkawa/lib/reflection$frame;->rtype:Ljava/lang/Object;

    .line 30
    move-object v2, v1

    iget-object v2, v2, Lkawa/lib/reflection$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    move-object v0, v2

    .end local v0    # "rtype":Ljava/lang/Object;
    return-object v0
.end method

.method public static recordTypeDescriptor(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "object":Ljava/lang/Object;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "object":Ljava/lang/Object;
    return-object v0
.end method

.method public static recordTypeFieldNames(Ljava/lang/Object;)Lgnu/lists/LList;
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "rtd":Ljava/lang/Object;
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v1, v3

    :try_start_0
    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {v2}, Lkawa/lang/Record;->typeFieldNames(Lgnu/bytecode/ClassType;)Lgnu/lists/LList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "rtd":Ljava/lang/Object;
    return-object v0

    .line 47
    .restart local v0    # "rtd":Ljava/lang/Object;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v9, v3

    move-object v2, v9

    move-object v3, v8

    move-object v4, v9

    move-object v8, v3

    move-object v9, v4

    move-object v3, v9

    move-object v4, v8

    const-string/jumbo v5, "kawa.lang.Record.typeFieldNames(class-type)"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static recordTypeName(Lgnu/bytecode/ClassType;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "rtd":Lgnu/bytecode/ClassType;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "rtd":Lgnu/bytecode/ClassType;
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 44
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 17
    :pswitch_1
    move-object v3, v2

    :try_start_0
    invoke-static {v3}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/reflection;->recordConstructor(Lgnu/bytecode/ClassType;)Lkawa/lang/RecordConstructor;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 26
    :pswitch_2
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/reflection;->isRecord(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 29
    :pswitch_3
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/reflection;->recordPredicate(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 34
    :pswitch_4
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/reflection;->recordTypeDescriptor(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 40
    :pswitch_5
    move-object v3, v2

    :try_start_1
    invoke-static {v3}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/reflection;->recordTypeName(Lgnu/bytecode/ClassType;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 44
    :pswitch_6
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/reflection;->recordTypeFieldNames(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_7
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/reflection;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 17
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

    const-string/jumbo v6, "record-constructor"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 40
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

    const-string/jumbo v6, "record-type-name"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 113
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    move-object v4, v2

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :goto_1
    move-object v5, v3

    :try_start_0
    check-cast v5, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4, v5}, Lkawa/lib/reflection;->makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 17
    :pswitch_2
    move-object v4, v2

    :try_start_1
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v5, v3

    invoke-static {v4, v5}, Lkawa/lib/reflection;->recordConstructor(Lgnu/bytecode/ClassType;Ljava/lang/Object;)Lkawa/lang/RecordConstructor;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 20
    :pswitch_3
    move-object v4, v2

    :try_start_2
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    if-nez v6, :cond_1

    const/4 v5, 0x0

    :goto_2
    invoke-static {v4, v5}, Lkawa/lib/reflection;->recordAccessor(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/GetFieldProc;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 23
    :pswitch_4
    move-object v4, v2

    :try_start_3
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    move-object v5, v3

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    if-nez v6, :cond_2

    const/4 v5, 0x0

    :goto_3
    invoke-static {v4, v5}, Lkawa/lib/reflection;->recordModifier(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/SetFieldProc;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 113
    :pswitch_5
    move-object v4, v2

    :try_start_4
    invoke-static {v4}, Lgnu/kawa/lispexpr/LangObjType;->coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    move-object v5, v3

    :try_start_5
    invoke-static {v5}, Lgnu/kawa/lispexpr/LangObjType;->coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v5

    invoke-static {v4, v5}, Lkawa/lib/reflection;->isSubtype(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    move-object v0, v4

    goto :goto_0

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 14
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

    const-string/jumbo v7, "make-record-type"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 17
    :catch_1
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

    const-string/jumbo v7, "record-constructor"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 20
    :catch_2
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

    const-string/jumbo v7, "record-accessor"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 23
    :catch_3
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

    const-string/jumbo v7, "record-modifier"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 113
    :catch_4
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

    const-string/jumbo v7, "subtype?"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_5
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

    const-string/jumbo v7, "subtype?"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 17
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 44
    :goto_0
    return v0

    .line 4294967295
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

    .line 44
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

    .line 40
    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-static {v6}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v6

    if-eqz v6, :cond_0

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

    :cond_0
    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    .line 34
    :pswitch_4
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

    .line 29
    :pswitch_5
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

    .line 26
    :pswitch_6
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

    .line 17
    :pswitch_7
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-static {v6}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v6

    if-eqz v6, :cond_1

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

    :cond_1
    const v6, -0xbffff

    move v0, v6

    goto/16 :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v5, :pswitch_data_0

    .line 14
    :pswitch_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 113
    :goto_0
    return v0

    :pswitch_1
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-static {v7}, Lgnu/kawa/lispexpr/LangObjType;->coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v7

    if-eqz v7, :cond_0

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-static {v7}, Lgnu/kawa/lispexpr/LangObjType;->coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v7

    if-eqz v7, :cond_1

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_0
    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_1
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 23
    :pswitch_2
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-static {v7}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v7

    if-eqz v7, :cond_2

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

    goto :goto_0

    :cond_2
    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    .line 20
    :pswitch_3
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-static {v7}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v7

    if-eqz v7, :cond_3

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

    goto :goto_0

    :cond_3
    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    .line 17
    :pswitch_4
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-static {v7}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v7

    if-eqz v7, :cond_4

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

    goto/16 :goto_0

    :cond_4
    const v7, -0xbffff

    move v0, v7

    goto/16 :goto_0

    .line 14
    :pswitch_5
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/lists/LList;

    if-eqz v7, :cond_5

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_5
    const v7, -0xbfffe

    move v0, v7

    goto/16 :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/reflection;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 14
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
