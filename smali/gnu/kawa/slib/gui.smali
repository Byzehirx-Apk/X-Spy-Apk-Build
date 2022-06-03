.class public Lgnu/kawa/slib/gui;
.super Lgnu/expr/ModuleBody;
.source "gui.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/gui;

.field public static final Button:Lgnu/expr/ModuleMethod;

.field public static final Column:Lgnu/expr/ModuleMethod;

.field public static final Image:Lkawa/lang/Macro;

.field public static final Label:Lgnu/expr/ModuleMethod;

.field static final Lit0:Ljava/lang/Class;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lkawa/lang/SyntaxRules;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lkawa/lang/SyntaxRules;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/mapping/SimpleSymbol;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/mapping/SimpleSymbol;

.field static final Lit36:Lgnu/mapping/SimpleSymbol;

.field static final Lit37:Lgnu/mapping/SimpleSymbol;

.field static final Lit38:Lgnu/mapping/SimpleSymbol;

.field static final Lit39:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit43:Lgnu/mapping/SimpleSymbol;

.field static final Lit44:Lgnu/math/IntNum;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lkawa/lang/SyntaxRules;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/expr/ModuleMethod;

.field public static final Text:Lgnu/expr/ModuleMethod;

.field public static final Window:Lgnu/expr/ModuleMethod;

.field public static final as$Mncolor:Lgnu/expr/ModuleMethod;

.field public static final button:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/expr/ModuleMethod;

.field public static final image$Mnread:Lgnu/expr/ModuleMethod;

.field public static final image$Mnwidth:Lgnu/expr/ModuleMethod;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

.field static final loc$$St$DtgetHeight:Lgnu/mapping/Location;

.field static final loc$$St$DtgetWidth:Lgnu/mapping/Location;

.field public static final process$Mnkeywords:Lkawa/lang/Macro;

.field public static final run$Mnapplication:Lkawa/lang/Macro;

.field public static final set$Mncontent:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "value"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "name"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "invoke"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "getName"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "quote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "attr"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "<gnu.kawa.xml.KAttr>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "instance?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "+"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "loop"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "<object>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "primitive-array-get"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "quasiquote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "$lookup$"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "arg"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "num-args"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "i"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "<int>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "::"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v26, v3

    move-object/from16 v3, v26

    move-object/from16 v4, v26

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v26

    const-string/jumbo v8, "run-application"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v26

    sput-object v7, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v26, v4

    move-object/from16 v4, v26

    move-object/from16 v5, v26

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v26, v7

    move-object/from16 v7, v26

    move-object/from16 v8, v26

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v26, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v26

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0003"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string/jumbo v18, "gnu.kawa.models.Window"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const-string/jumbo v20, "open"

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

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xb7007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Lit24:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "Window"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "set-content"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "Column"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "Row"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "Text"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "Label"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "image-height"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "image-width"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "image-read"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v26, v3

    move-object/from16 v3, v26

    move-object/from16 v4, v26

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v26

    const-string/jumbo v8, "text-field"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v26, v4

    move-object/from16 v4, v26

    move-object/from16 v5, v26

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v26, v7

    move-object/from16 v7, v26

    move-object/from16 v8, v26

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v26, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v26

    const-string/jumbo v11, "\u000c\u0018\u0003"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0002"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "make"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "<gnu.kawa.models.DrawImage>"

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

    sput-object v1, Lgnu/kawa/slib/gui;->Lit13:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "Image"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "Button"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "button"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "as-color"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v26, v3

    move-object/from16 v3, v26

    move-object/from16 v4, v26

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v26

    const-string/jumbo v8, "process-keywords"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v6

    move-object/from16 v6, v26

    move-object/from16 v7, v26

    sput-object v7, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v26, v4

    move-object/from16 v4, v26

    move-object/from16 v5, v26

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v26, v7

    move-object/from16 v7, v26

    move-object/from16 v8, v26

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v26, v9

    move-object/from16 v9, v26

    move-object/from16 v10, v26

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\t\u000b\u0018,\u0008\u0011\u0018\u0004\u0011\u00184\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018L\u0008\u0011\u0018\u0004a\u0008\u0011\u0018T\u0008\u0011\u0018\\\t\u000b\u0018d\u0008\u0011\u0018l\u00a9\u0011\u0018ty\t\u0013\t\u0003\u0011\u0018|\u0008\u0011\u0018\u0084\t\u000b\u0018\u008c\u0018\u0094\u0099\u0011\u0018\u009ci\u0011\u0018\u00a4\u0011\u0018\u00ac\u0008\t\u0013\t\u0003\u0018\u00b4\u0018\u00bc\u0008\u0011\u0018\u00c41\t\u001b\t\u0003\u0018\u00cc\u0018\u00d4"

    const/16 v12, 0x1b

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "let"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x4

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "field"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x5

    sget-object v15, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string/jumbo v18, "length"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v19, 0x402a

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x402a

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x4029

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x6

    sget-object v15, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/4 v14, 0x7

    sget-object v15, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v21, 0x501d

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v20, 0x5017

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v19, 0x5014

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x5011

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x5010

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x8

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "if"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x9

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "<"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v20, 0x6011

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v19, 0x600f

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x600c

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0xa

    sget-object v15, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0xb

    sget-object v15, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v19, 0x7026

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x7011

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0xc

    sget-object v15, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v18, 0x7035

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0xd

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "cond"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0xe

    sget-object v15, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v17, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    const-string/jumbo v19, "<gnu.expr.Keyword>"

    invoke-direct/range {v18 .. v19}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0x801d

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x8019

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x800e

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0xf

    sget-object v15, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v16

    move-object/from16 v16, v26

    move-object/from16 v17, v26

    const-string/jumbo v18, "gnu.expr.Keyword"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xa00a

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xa023

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xa009

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x10

    sget-object v15, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xb01f

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xb00a

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x11

    sget-object v15, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0xb033

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xb031

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xb02e

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xb02e

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x12

    sget-object v15, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0xc012

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0xc010

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xc00d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xc00d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xc007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xc007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x13

    sget-object v15, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0xd016

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xd012

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xd007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x14

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "let*"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x15

    sget-object v15, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0xe02c

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0xe017

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xe014

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xe00e

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const-string/jumbo v20, "<java.lang.String>"

    invoke-direct/range {v19 .. v20}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    sget-object v22, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v23, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v24, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v25, 0xf031

    invoke-static/range {v22 .. v25}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v22

    const-string/jumbo v23, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v24, 0xf031

    invoke-static/range {v21 .. v24}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v21

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v23, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v24, 0xf030

    invoke-static/range {v21 .. v24}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v21

    const-string/jumbo v22, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v23, 0xf02b

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v22, 0xf023

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v22, 0xf023

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0xf010

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0xf00d

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xf007

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v21, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const-string/jumbo v23, "getObjectValue"

    invoke-direct/range {v22 .. v23}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lgnu/mapping/SimpleSymbol;

    sget-object v22, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v23, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v24, 0x1001c

    invoke-static/range {v21 .. v24}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v21

    const-string/jumbo v22, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v23, 0x1001c

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v22, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v23, 0x1001b

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v22, 0x10016

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0x1000e

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0x1000e

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0x10007

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0x10007

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0xf007

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0xe00d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x16

    sget-object v15, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x11022

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x1101d

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x17

    sget-object v15, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0x12012

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0x12010

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x1200d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x1200d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x12007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x12007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x18

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    const-string/jumbo v17, "else"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x19

    sget-object v15, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x1401f

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v26, v12

    move-object/from16 v12, v26

    move-object/from16 v13, v26

    const/16 v14, 0x1a

    sget-object v15, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v21, 0x15012

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v20, 0x15010

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x1500d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v19, 0x1500d

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x15007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v18, 0x15007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Lit8:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "<gnu.kawa.models.Column>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "<gnu.kawa.models.Row>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "*.getHeight"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "*.getWidth"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "cell-spacing"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    const-string/jumbo v3, "text"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-class v1, Ljava/awt/Color;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    new-instance v1, Lgnu/kawa/slib/gui;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    invoke-direct {v2}, Lgnu/kawa/slib/gui;-><init>()V

    sput-object v1, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit8:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->process$Mnkeywords:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    sget-object v3, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->as$Mncolor:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->button:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/slib/gui;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Button:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit13:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->Image:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->image$Mnread:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/4 v4, 0x5

    sget-object v5, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->image$Mnwidth:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->image$Mnheight:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/4 v4, 0x7

    sget-object v5, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Label:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Text:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Row:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/16 v4, 0xa

    sget-object v5, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Column:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/16 v4, 0xb

    sget-object v5, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->set$Mncontent:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v26, v1

    move-object/from16 v1, v26

    move-object/from16 v2, v26

    move-object v3, v0

    const/16 v4, 0xc

    sget-object v5, Lgnu/kawa/slib/gui;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0x1000

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/gui;->Window:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/gui;->Lit24:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->run$Mnapplication:Lkawa/lang/Macro;

    sget-object v1, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

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

.method public static varargs Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .locals 16

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v8, Lgnu/kawa/models/Button;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lgnu/kawa/models/Button;-><init>()V

    move-object v1, v8

    .line 62
    .local v1, "button":Lgnu/kawa/models/Button;
    move-object v8, v0

    array-length v8, v8

    move v2, v8

    .local v2, "num$Mnargs":I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_2

    move-object v8, v0

    move v9, v3

    aget-object v8, v8, v9

    move-object v4, v8

    .local v4, "arg":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v9, v4

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    :try_start_0
    check-cast v9, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move-object v8, v4

    instance-of v8, v8, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 62
    move-object v8, v4

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_1
    check-cast v8, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v8

    .local v5, "attr":Lgnu/kawa/xml/KAttr;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .local v6, "name":Ljava/lang/String;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .local v7, "value":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v8

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .line 10
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v4    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "gnu.expr.Keyword.getName()"

    const/4 v12, 0x1

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "attr"

    const/4 v12, -0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static varargs Column([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 150
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    sget-object v9, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v10, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v10}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    .line 152
    .local v1, "instance":Ljava/lang/Object;
    move-object v9, v0

    array-length v9, v9

    move v2, v9

    .local v2, "num$Mnargs":I
    const/4 v9, 0x0

    move v3, v9

    .local v3, "i":I
    :goto_0
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_2

    move-object v9, v0

    move v10, v3

    aget-object v9, v9, v10

    move-object v4, v9

    .local v4, "arg":Ljava/lang/Object;
    move-object v9, v4

    instance-of v9, v9, Lgnu/expr/Keyword;

    if-eqz v9, :cond_0

    move-object v9, v1

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v5, v10

    :try_start_1
    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v4

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v5, v11

    :try_start_2
    check-cast v10, Lgnu/expr/Keyword;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v10}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v0

    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v9, v10, v11}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move-object v9, v4

    instance-of v9, v9, Lgnu/kawa/xml/KAttr;

    if-eqz v9, :cond_1

    .line 152
    move-object v9, v4

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    :try_start_3
    check-cast v9, Lgnu/kawa/xml/KAttr;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v9

    .local v5, "attr":Lgnu/kawa/xml/KAttr;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .local v6, "name":Ljava/lang/String;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .local v7, "value":Ljava/lang/Object;
    move-object v9, v1

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v8, v10

    :try_start_4
    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v10, v6

    move-object v11, v7

    invoke-static {v9, v10, v11}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v9, v1

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v5, v10

    :try_start_5
    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v10, v4

    invoke-static {v9, v10}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v3    # "i":I
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v12, 0x97

    const/16 v13, 0x19

    invoke-virtual {v10, v11, v12, v13}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v9

    .line 152
    .restart local v1    # "instance":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v3    # "i":I
    .restart local v4    # "arg":Ljava/lang/Object;
    :catch_1
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "box-keyword"

    const/4 v13, 0x0

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 10
    :catch_2
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "gnu.expr.Keyword.getName()"

    const/4 v13, 0x1

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_3
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "attr"

    const/4 v13, -0x2

    move-object v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 152
    .restart local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :catch_4
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "box-keyword"

    const/4 v13, 0x0

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_5
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "box-non-keyword"

    const/4 v13, 0x0

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public static varargs Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;
    .locals 16

    .prologue
    .line 100
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v8, Lgnu/kawa/models/Label;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lgnu/kawa/models/Label;-><init>()V

    move-object v1, v8

    .line 102
    .local v1, "instance":Lgnu/kawa/models/Label;
    move-object v8, v0

    array-length v8, v8

    move v2, v8

    .local v2, "num$Mnargs":I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_2

    move-object v8, v0

    move v9, v3

    aget-object v8, v8, v9

    move-object v4, v8

    .local v4, "arg":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v9, v4

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    :try_start_0
    check-cast v9, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move-object v8, v4

    instance-of v8, v8, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 102
    move-object v8, v4

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_1
    check-cast v8, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v8

    .local v5, "attr":Lgnu/kawa/xml/KAttr;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .local v6, "name":Ljava/lang/String;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .local v7, "value":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/slib/gui;->labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .line 10
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v4    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "gnu.expr.Keyword.getName()"

    const/4 v12, 0x1

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "attr"

    const/4 v12, -0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static varargs Row([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 145
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    sget-object v9, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v10, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v10}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v1, v9

    .line 147
    .local v1, "instance":Ljava/lang/Object;
    move-object v9, v0

    array-length v9, v9

    move v2, v9

    .local v2, "num$Mnargs":I
    const/4 v9, 0x0

    move v3, v9

    .local v3, "i":I
    :goto_0
    move v9, v3

    move v10, v2

    if-ge v9, v10, :cond_2

    move-object v9, v0

    move v10, v3

    aget-object v9, v9, v10

    move-object v4, v9

    .local v4, "arg":Ljava/lang/Object;
    move-object v9, v4

    instance-of v9, v9, Lgnu/expr/Keyword;

    if-eqz v9, :cond_0

    move-object v9, v1

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v5, v10

    :try_start_1
    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v4

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v5, v11

    :try_start_2
    check-cast v10, Lgnu/expr/Keyword;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v10}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v0

    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v9, v10, v11}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move-object v9, v4

    instance-of v9, v9, Lgnu/kawa/xml/KAttr;

    if-eqz v9, :cond_1

    .line 147
    move-object v9, v4

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v6, v10

    :try_start_3
    check-cast v9, Lgnu/kawa/xml/KAttr;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v5, v9

    .local v5, "attr":Lgnu/kawa/xml/KAttr;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .local v6, "name":Ljava/lang/String;
    move-object v9, v5

    invoke-virtual {v9}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .local v7, "value":Ljava/lang/Object;
    move-object v9, v1

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v8, v10

    :try_start_4
    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v10, v6

    move-object v11, v7

    invoke-static {v9, v10, v11}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v9, v1

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v5, v10

    :try_start_5
    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v10, v4

    invoke-static {v9, v10}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v3    # "i":I
    .restart local v0    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v9

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v12, 0x92

    const/16 v13, 0x19

    invoke-virtual {v10, v11, v12, v13}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v9

    .line 147
    .restart local v1    # "instance":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v3    # "i":I
    .restart local v4    # "arg":Ljava/lang/Object;
    :catch_1
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "box-keyword"

    const/4 v13, 0x0

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 10
    :catch_2
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "gnu.expr.Keyword.getName()"

    const/4 v13, 0x1

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 14
    :catch_3
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "attr"

    const/4 v13, -0x2

    move-object v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 147
    .restart local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :catch_4
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "box-keyword"

    const/4 v13, 0x0

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_5
    move-exception v9

    new-instance v10, Lgnu/mapping/WrongType;

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v11, v16

    move-object v15, v10

    move-object/from16 v16, v11

    move-object/from16 v10, v16

    move-object v11, v15

    const-string/jumbo v12, "box-non-keyword"

    const/4 v13, 0x0

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public static varargs Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;
    .locals 16

    .prologue
    .line 123
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v8, Lgnu/kawa/models/Text;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lgnu/kawa/models/Text;-><init>()V

    move-object v1, v8

    .line 125
    .local v1, "instance":Lgnu/kawa/models/Text;
    move-object v8, v0

    array-length v8, v8

    move v2, v8

    .local v2, "num$Mnargs":I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_2

    move-object v8, v0

    move v9, v3

    aget-object v8, v8, v9

    move-object v4, v8

    .local v4, "arg":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v9, v4

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    :try_start_0
    check-cast v9, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move-object v8, v4

    instance-of v8, v8, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 125
    move-object v8, v4

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_1
    check-cast v8, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v8

    .local v5, "attr":Lgnu/kawa/xml/KAttr;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .local v6, "name":Ljava/lang/String;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .local v7, "value":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/slib/gui;->textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .line 10
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v4    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "gnu.expr.Keyword.getName()"

    const/4 v12, 0x1

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "attr"

    const/4 v12, -0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static varargs Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;
    .locals 16

    .prologue
    .line 174
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/kawa/models/Display;->makeWindow()Lgnu/kawa/models/Window;

    move-result-object v8

    move-object v1, v8

    .line 177
    .local v1, "instance":Lgnu/kawa/models/Window;
    move-object v8, v0

    array-length v8, v8

    move v2, v8

    .local v2, "num$Mnargs":I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_2

    move-object v8, v0

    move v9, v3

    aget-object v8, v8, v9

    move-object v4, v8

    .local v4, "arg":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v9, v4

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    :try_start_0
    check-cast v9, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move-object v8, v4

    instance-of v8, v8, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 177
    move-object v8, v4

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_1
    check-cast v8, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v8

    .local v5, "attr":Lgnu/kawa/xml/KAttr;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .local v6, "name":Ljava/lang/String;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .local v7, "value":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/slib/gui;->windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .line 10
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v4    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "gnu.expr.Keyword.getName()"

    const/4 v12, 0x1

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "attr"

    const/4 v12, -0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static asColor(Ljava/lang/Object;)Ljava/awt/Color;
    .locals 10

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Ljava/awt/Color;

    if-eqz v2, :cond_0

    .line 25
    move-object v2, v0

    check-cast v2, Ljava/awt/Color;

    .line 31
    :goto_0
    move-object v0, v2

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0

    .line 25
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 27
    new-instance v2, Ljava/awt/Color;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v1, v5

    :try_start_0
    check-cast v4, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/awt/Color;-><init>(I)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_2

    .line 29
    new-instance v2, Ljava/awt/Color;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-static {v4}, Lgnu/math/IntNum;->intValue(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/awt/Color;-><init>(I)V

    goto :goto_0

    .line 31
    :cond_2
    sget-object v2, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    sget-object v3, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/awt/Color;

    goto :goto_0

    .line 27
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

    const-string/jumbo v5, "java.lang.Integer.intValue()"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method static asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "arg":Ljava/lang/Object;
    return-object v0
.end method

.method static boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "instance":Lgnu/kawa/models/Box;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/models/Box;->setCellSpacing(Ljava/lang/Object;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 135
    :goto_0
    move-object v0, v3

    .end local v0    # "instance":Lgnu/kawa/models/Box;
    return-object v0

    .restart local v0    # "instance":Lgnu/kawa/models/Box;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "unknown box attribute ~s"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method static boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "box":Lgnu/kawa/models/Box;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lgnu/kawa/slib/gui;->asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/models/Box;->add(Lgnu/kawa/models/Viewable;)V

    return-void
.end method

.method public static varargs button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .locals 16

    .prologue
    .line 55
    move-object/from16 v0, p0

    .local v0, "args":[Ljava/lang/Object;
    new-instance v8, Lgnu/kawa/models/Button;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lgnu/kawa/models/Button;-><init>()V

    move-object v1, v8

    .line 57
    .local v1, "button":Lgnu/kawa/models/Button;
    move-object v8, v0

    array-length v8, v8

    move v2, v8

    .local v2, "num$Mnargs":I
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    :goto_0
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_2

    move-object v8, v0

    move v9, v3

    aget-object v8, v8, v9

    move-object v4, v8

    .local v4, "arg":Ljava/lang/Object;
    move-object v8, v4

    instance-of v8, v8, Lgnu/expr/Keyword;

    if-eqz v8, :cond_0

    move-object v8, v1

    move-object v9, v4

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    :try_start_0
    check-cast v9, Lgnu/expr/Keyword;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v9}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 12
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    move-object v8, v4

    instance-of v8, v8, Lgnu/kawa/xml/KAttr;

    if-eqz v8, :cond_1

    .line 57
    move-object v8, v4

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    :try_start_1
    check-cast v8, Lgnu/kawa/xml/KAttr;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v8

    .local v5, "attr":Lgnu/kawa/xml/KAttr;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .local v6, "name":Ljava/lang/String;
    move-object v8, v5

    invoke-virtual {v8}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    .local v7, "value":Ljava/lang/Object;
    move-object v8, v1

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v5    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v8, v1

    move-object v9, v4

    invoke-static {v8, v9}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v8

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v4    # "arg":Ljava/lang/Object;
    :cond_2
    move-object v8, v1

    move-object v0, v8

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0

    .line 10
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v4    # "arg":Ljava/lang/Object;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "gnu.expr.Keyword.getName()"

    const/4 v12, 0x1

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .line 14
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    move-object v14, v8

    move-object v15, v9

    move-object v8, v15

    move-object v9, v14

    move-object v10, v15

    move-object v14, v9

    move-object v15, v10

    move-object v9, v15

    move-object v10, v14

    const-string/jumbo v11, "attr"

    const/4 v12, -0x2

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method static buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "button":Lgnu/kawa/models/Button;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v4, v1

    const-string/jumbo v5, "foreground"

    if-ne v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 49
    :goto_0
    move-object v0, v4

    .end local v0    # "button":Lgnu/kawa/models/Button;
    return-object v0

    .line 33
    .restart local v0    # "button":Lgnu/kawa/models/Button;
    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "background"

    if-ne v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v2

    invoke-static {v5}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "action"

    if-ne v4, v5, :cond_2

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/kawa/models/Button;->setAction(Ljava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "text"

    if-ne v4, v5, :cond_4

    move-object v4, v0

    move-object v5, v2

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    if-nez v6, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v4, v1

    const-string/jumbo v5, "disabled"

    if-ne v4, v5, :cond_6

    move-object v4, v0

    move-object v5, v2

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    :try_start_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v6, :cond_5

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v4, v5}, Lgnu/kawa/models/Button;->setDisabled(Z)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 49
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const-string/jumbo v8, "unknown button attribute ~s"

    aput-object v8, v6, v7

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 48
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

    const-string/jumbo v7, "gnu.kawa.models.Button.setDisabled(boolean)"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method static buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "button":Lgnu/kawa/models/Button;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v2

    .end local v0    # "button":Lgnu/kawa/models/Button;
    return-object v0
.end method

.method public static imageHeight(Ljava/awt/image/BufferedImage;)I
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "image":Ljava/awt/image/BufferedImage;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "image":Ljava/awt/image/BufferedImage;
    return v0

    .restart local v0    # "image":Ljava/awt/image/BufferedImage;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v4, 0x4d

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method public static imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "uri":Lgnu/text/Path;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "uri":Lgnu/text/Path;
    return-object v0
.end method

.method public static imageWidth(Ljava/awt/image/BufferedImage;)I
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "image":Ljava/awt/image/BufferedImage;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "image":Ljava/awt/image/BufferedImage;
    return v0

    .restart local v0    # "image":Ljava/awt/image/BufferedImage;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const/16 v4, 0x4a

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method static labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "instance":Lgnu/kawa/models/Label;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    move-object v4, v2

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 90
    :goto_1
    move-object v0, v3

    .end local v0    # "instance":Lgnu/kawa/models/Label;
    return-object v0

    .line 79
    .restart local v0    # "instance":Lgnu/kawa/models/Label;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 90
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "unknown label attribute ~s"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method static labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "instance":Lgnu/kawa/models/Label;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "window":Lgnu/kawa/models/Window;
    move-object v1, p1

    .local v1, "pane":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method

.method static textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "instance":Lgnu/kawa/models/Text;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    sget-object v4, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    move-object v4, v2

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 116
    :goto_1
    move-object v0, v3

    .end local v0    # "instance":Lgnu/kawa/models/Text;
    return-object v0

    .line 105
    .restart local v0    # "instance":Lgnu/kawa/models/Text;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 116
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "unknown text attribute ~s"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method static textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "instance":Lgnu/kawa/models/Text;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "instance":Lgnu/kawa/models/Window;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    const-string/jumbo v4, "title"

    if-ne v3, v4, :cond_1

    move-object v3, v0

    move-object v4, v2

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3, v4}, Lgnu/kawa/models/Window;->setTitle(Ljava/lang/String;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 167
    :goto_1
    move-object v0, v3

    .end local v0    # "instance":Lgnu/kawa/models/Window;
    return-object v0

    .line 158
    .restart local v0    # "instance":Lgnu/kawa/models/Window;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "content"

    if-ne v3, v4, :cond_2

    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "menubar"

    if-ne v3, v4, :cond_3

    move-object v3, v0

    move-object v4, v2

    invoke-interface {v3, v4}, Lgnu/kawa/models/Window;->setMenuBar(Ljava/lang/Object;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    .line 167
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "unknown window attribute ~s"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method static windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "instance":Lgnu/kawa/models/Window;
    move-object v1, p1

    .local v1, "arg":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
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

    .line 76
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 23
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 70
    :pswitch_2
    move-object v3, v2

    :try_start_0
    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/slib/gui;->imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 73
    :pswitch_3
    move-object v3, v2

    :try_start_1
    check-cast v3, Ljava/awt/image/BufferedImage;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v3}, Lgnu/kawa/slib/gui;->imageWidth(Ljava/awt/image/BufferedImage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 76
    :pswitch_4
    move-object v3, v2

    :try_start_2
    check-cast v3, Ljava/awt/image/BufferedImage;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->imageHeight(Ljava/awt/image/BufferedImage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 70
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

    const-string/jumbo v6, "image-read"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 73
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

    const-string/jumbo v6, "image-width"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 76
    :catch_2
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

    const-string/jumbo v6, "image-height"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
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

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    .line 155
    move-object v4, v2

    :try_start_0
    check-cast v4, Lgnu/kawa/models/Window;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/slib/gui;->setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 155
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

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

    const-string/jumbo v7, "set-content"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    .line 174
    :pswitch_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 55
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 60
    :pswitch_2
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 100
    :pswitch_3
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 123
    :pswitch_4
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 145
    :pswitch_5
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->Row([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 150
    :pswitch_6
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->Column([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 174
    :pswitch_7
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/gui;->Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
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

    .line 23
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 76
    :goto_0
    return v0

    :pswitch_1
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/awt/image/BufferedImage;

    if-nez v6, :cond_0

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_0
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

    .line 73
    :pswitch_2
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Ljava/awt/image/BufferedImage;

    if-nez v6, :cond_1

    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    :cond_1
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

    .line 70
    :pswitch_3
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-static {v6}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v6

    if-eqz v6, :cond_2

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

    :cond_2
    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    .line 23
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

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
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

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    .line 155
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/kawa/models/Window;

    if-nez v7, :cond_1

    const v7, -0xbffff

    move v0, v7

    :goto_0
    return v0

    .line 4294967295
    .line 155
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

    :cond_1
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

    packed-switch v4, :pswitch_data_0

    .line 55
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 174
    :goto_0
    return v0

    :pswitch_1
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

    goto :goto_0

    .line 150
    :pswitch_2
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

    goto :goto_0

    .line 145
    :pswitch_3
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

    goto :goto_0

    .line 123
    :pswitch_4
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

    goto :goto_0

    .line 100
    :pswitch_5
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

    goto :goto_0

    .line 60
    :pswitch_6
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

    goto :goto_0

    .line 55
    :pswitch_7
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

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/gui;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 23
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
