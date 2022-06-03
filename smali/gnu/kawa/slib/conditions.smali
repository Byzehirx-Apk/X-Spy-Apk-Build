.class public Lgnu/kawa/slib/conditions;
.super Lgnu/expr/ModuleBody;
.source "conditions.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/condition$Mntype;
    }
.end annotation


# static fields
.field public static $Amcondition:Ljava/lang/Object;

.field public static $Amerror:Ljava/lang/Object;

.field public static $Ammessage:Ljava/lang/Object;

.field public static $Amserious:Ljava/lang/Object;

.field static final $Lscondition$Mntype$Gr:Ljava/lang/Class;

.field public static final $Prvt$$Lscondition$Gr:Ljava/lang/Class;

.field public static final $Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lgnu/kawa/slib/conditions;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxRules;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lkawa/lang/SyntaxRules;

.field public static final condition:Lkawa/lang/Macro;

.field public static final condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field public static final condition$Mnref:Lgnu/expr/ModuleMethod;

.field static final condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

.field public static final condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field public static final condition$Qu:Lgnu/expr/ModuleMethod;

.field public static final define$Mncondition$Mntype:Lkawa/lang/Macro;

.field public static final extract$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .prologue
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "thing"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "quote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "type-field-alist->condition"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v8, "condition"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v11, "\u000c\u0018]\u000c\u0007-\u000c\u000f\u000c\u0017\u0008\u0008\u0010\u0008\u0000\u0018\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0003\u0005\u0005"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0008\u0005\u0011\u0018\u0014\t\u0003\u0008\u0011\u0018\u000c\u0008\r\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u000b\u0008\u0013"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "list"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "cons"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x2

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit19:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "extract-condition"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "make-compound-condition"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "condition-ref"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v8, "condition-type-field-alist"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "$lookup$"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const-string/jumbo v18, "*"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    new-instance v17, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const-string/jumbo v19, "quasiquote"

    invoke-direct/range {v18 .. v19}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    const-string/jumbo v20, ".type-field-alist"

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

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    const v18, 0x8e007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "as"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "<condition>"

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

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit14:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "condition-has-type?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "make-condition"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "condition?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v8, "define-condition-type"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v6

    move-object/from16 v6, v21

    move-object/from16 v7, v21

    sput-object v7, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017-\u000c\u001f\u000c\'\u0008\u0018\u0010\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x5

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\u00c9\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u0003\t\u000b\u0008\u0011\u0018\u001c\u0008\u0008\u001d\u001b\u00c1\u0011\u0018\u000c!\t\u0013\u0018$\u0008\u0011\u0018,\u0011\u00184\u0008\u0011\u0018<\u0011\u0018D\u0008\u0003\u0008%\u0011\u0018\u000c!\t#\u0018L\u0008\u0011\u0018TA\u0011\u0018\\\u0011\u0018d\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u001b"

    const/16 v12, 0xd

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "begin"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x1

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "define"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x2

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "make-condition-type"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    sput-object v16, Lgnu/kawa/slib/conditions;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x4

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    const v18, 0x5001c

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x5

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const-string/jumbo v17, "and"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x6

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    const v19, 0x5101b

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    const v18, 0x5100f

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/4 v14, 0x7

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0x8

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0x9

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    const v18, 0x5301c

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xa

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xb

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    const/16 v14, 0xc

    sget-object v15, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit9:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "condition-type?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "message"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "&error"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "&serious"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm"

    const v4, 0xe2003

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "&message"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    const-string/jumbo v3, "&condition"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/kawa/slib/conditions;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    invoke-direct {v2}, Lgnu/kawa/slib/conditions;-><init>()V

    sput-object v1, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    const-class v1, Lgnu/kawa/slib/condition$Mntype;

    sput-object v1, Lgnu/kawa/slib/conditions;->$Lscondition$Mntype$Gr:Ljava/lang/Class;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    sget-object v3, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;

    .line 34
    sget-object v1, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit9:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->define$Mncondition$Mntype:Lkawa/lang/Macro;

    const-class v1, Lgnu/kawa/slib/condition;

    sput-object v1, Lgnu/kawa/slib/conditions;->$Prvt$$Lscondition$Gr:Ljava/lang/Class;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/4 v4, 0x4

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->condition$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/4 v4, 0x5

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->make$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit14:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/4 v4, 0x7

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->condition$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/16 v4, 0x8

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v6, -0xfff

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->extract$Mncondition:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/conditions;->Lit19:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->condition:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v21, v1

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    move-object v3, v0

    const/16 v4, 0xa

    sget-object v5, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/conditions;->$Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

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

.method static checkConditionTypeFieldAlist(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .prologue
    .line 201
    move-object/from16 v1, p0

    .local v1, "the$Mntype$Mnfield$Mnalist":Ljava/lang/Object;
    move-object v15, v1

    move-object v2, v15

    .line 203
    .local v2, "type$Mnfield$Mnalist":Ljava/lang/Object;
    :goto_0
    move-object v15, v2

    invoke-static {v15}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 204
    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v3, v15

    .line 205
    .local v3, "entry":Ljava/lang/Object;
    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v5, v16

    :try_start_0
    check-cast v15, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v15

    .line 204
    .local v4, "type":Lgnu/kawa/slib/condition$Mntype;
    sget-object v15, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v5, v15

    .local v5, "field$Mnalist":Ljava/lang/Object;
    move-object v15, v5

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v8, v16

    move-object v7, v15

    .local v7, "arg0":Ljava/lang/Object;
    :goto_1
    move-object v15, v7

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    move-object v15, v8

    invoke-static {v15}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v15

    move-object v6, v15

    .local v6, "fields":Lgnu/lists/LList;
    move-object v15, v4

    iget-object v15, v15, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    move-object v7, v15

    .line 209
    .local v7, "all$Mnfields":Ljava/lang/Object;
    sget-object v15, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    move-object/from16 v16, v7

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v6

    aput-object v20, v18, v19

    invoke-static/range {v15 .. v17}, Lgnu/kawa/slib/srfi1;->lsetDifference$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    .local v8, "arg0":Ljava/lang/Object;
    :goto_2
    move-object v15, v8

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 220
    sget-object v15, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v2, v15

    goto :goto_0

    .line 204
    .end local v6    # "fields":Lgnu/lists/LList;
    .end local v8    # "arg0":Ljava/lang/Object;
    .local v7, "arg0":Ljava/lang/Object;
    :cond_0
    move-object v15, v7

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v10, v16

    :try_start_1
    check-cast v15, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v15

    .local v9, "arg0":Lgnu/lists/Pair;
    move-object v15, v9

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    .end local v7    # "arg0":Ljava/lang/Object;
    move-result-object v15

    sget-object v16, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    move-object/from16 v8, v16

    .local v8, "result":Lgnu/lists/Pair;
    move-object v7, v15

    .restart local v7    # "arg0":Ljava/lang/Object;
    goto :goto_1

    .line 209
    .end local v9    # "arg0":Lgnu/lists/Pair;
    .restart local v6    # "fields":Lgnu/lists/LList;
    .local v7, "all$Mnfields":Ljava/lang/Object;
    .local v8, "arg0":Ljava/lang/Object;
    :cond_1
    move-object v15, v8

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v10, v16

    :try_start_2
    check-cast v15, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v15

    .restart local v9    # "arg0":Lgnu/lists/Pair;
    move-object v15, v9

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    .end local v8    # "arg0":Ljava/lang/Object;
    move-result-object v15

    move-object v10, v15

    .line 210
    .local v10, "missing$Mnfield":Ljava/lang/Object;
    move-object v15, v4

    move-object/from16 v16, v10

    invoke-static/range {v15 .. v16}, Lgnu/kawa/slib/conditions;->conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v11, v15

    .line 212
    .local v11, "supertype":Ljava/lang/Object;
    move-object v15, v1

    move-object v12, v15

    .line 214
    .local v12, "alist":Ljava/lang/Object;
    :goto_3
    sget-object v15, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    sget-object v16, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v17, v12

    invoke-virtual/range {v16 .. v17}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v14, v16

    :try_start_3
    check-cast v15, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v16, v11

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move-object/from16 v14, v17

    :try_start_4
    check-cast v16, Lgnu/kawa/slib/condition$Mntype;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static/range {v15 .. v16}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v15

    move v13, v15

    .local v13, "x":Z
    move v15, v13

    if-eqz v15, :cond_3

    move v15, v13

    if-nez v15, :cond_2

    .line 216
    const-string/jumbo v15, "missing field in condition construction"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const/16 v18, 0x0

    move-object/from16 v19, v4

    aput-object v19, v17, v18

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const/16 v18, 0x1

    move-object/from16 v19, v10

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v16}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    :cond_2
    move-object v15, v9

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    .restart local v8    # "arg0":Ljava/lang/Object;
    goto/16 :goto_2

    .line 215
    .end local v8    # "arg0":Ljava/lang/Object;
    :cond_3
    sget-object v15, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v12, v15

    goto :goto_3

    .line 220
    .end local v3    # "entry":Ljava/lang/Object;
    .end local v4    # "type":Lgnu/kawa/slib/condition$Mntype;
    .end local v5    # "field$Mnalist":Ljava/lang/Object;
    .end local v6    # "fields":Lgnu/lists/LList;
    .end local v7    # "all$Mnfields":Ljava/lang/Object;
    .end local v9    # "arg0":Lgnu/lists/Pair;
    .end local v10    # "missing$Mnfield":Ljava/lang/Object;
    .end local v11    # "supertype":Ljava/lang/Object;
    .end local v12    # "alist":Ljava/lang/Object;
    .end local v13    # "x":Z
    :cond_4
    sget-object v15, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v1, v15

    .end local v1    # "the$Mntype$Mnfield$Mnalist":Ljava/lang/Object;
    return-object v1

    .line 205
    .restart local v1    # "the$Mntype$Mnfield$Mnalist":Ljava/lang/Object;
    .restart local v3    # "entry":Ljava/lang/Object;
    :catch_0
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "type"

    const/16 v19, -0x2

    move-object/from16 v20, v5

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .restart local v4    # "type":Lgnu/kawa/slib/condition$Mntype;
    .restart local v5    # "field$Mnalist":Ljava/lang/Object;
    .local v7, "arg0":Ljava/lang/Object;
    :catch_1
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "arg0"

    const/16 v19, -0x2

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 209
    .restart local v6    # "fields":Lgnu/lists/LList;
    .local v7, "all$Mnfields":Ljava/lang/Object;
    .restart local v8    # "arg0":Ljava/lang/Object;
    :catch_2
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "arg0"

    const/16 v19, -0x2

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    .line 214
    .end local v8    # "arg0":Ljava/lang/Object;
    .restart local v9    # "arg0":Lgnu/lists/Pair;
    .restart local v10    # "missing$Mnfield":Ljava/lang/Object;
    .restart local v11    # "supertype":Ljava/lang/Object;
    .restart local v12    # "alist":Ljava/lang/Object;
    :catch_3
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "condition-subtype?"

    const/16 v19, 0x0

    move-object/from16 v20, v14

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15

    :catch_4
    move-exception v15

    new-instance v16, Lgnu/mapping/WrongType;

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    move-object/from16 v15, v22

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v16, v22

    move-object/from16 v17, v21

    const-string/jumbo v18, "condition-subtype?"

    const/16 v19, 0x1

    move-object/from16 v20, v14

    invoke-direct/range {v16 .. v20}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v15
.end method

.method static conditionMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "condition":Ljava/lang/Object;
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v1, v3

    :try_start_0
    check-cast v2, Lgnu/kawa/slib/condition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v1, v4

    :try_start_1
    check-cast v3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v2, v3}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v2, v3}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "condition":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "condition":Ljava/lang/Object;
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

    const-string/jumbo v5, "extract-condition"

    const/4 v6, 0x0

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_1
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

    const-string/jumbo v5, "extract-condition"

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "condition":Lgnu/kawa/slib/condition;
    move-object v1, p1

    .local v1, "field":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "condition":Lgnu/kawa/slib/condition;
    return-object v0
.end method

.method static conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "condition$Mntype":Lgnu/kawa/slib/condition$Mntype;
    move-object v1, p1

    .local v1, "field":Ljava/lang/Object;
    move-object v3, v0

    move-object v2, v3

    .line 98
    .end local v0    # "condition$Mntype":Lgnu/kawa/slib/condition$Mntype;
    .local v2, "condition$Mntype":Lgnu/kawa/slib/condition$Mntype;
    :goto_0
    move-object v3, v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    :goto_1
    move-object v0, v3

    return-object v0

    .line 98
    :cond_0
    move-object v3, v1

    move-object v4, v2

    iget-object v4, v4, Lgnu/kawa/slib/condition$Mntype;->fields:Ljava/lang/Object;

    invoke-static {v3, v4}, Lkawa/lib/lists;->memq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_1

    .line 100
    move-object v3, v2

    goto :goto_1

    .line 102
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    check-cast v3, Lgnu/kawa/slib/condition$Mntype;

    move-object v2, v3

    goto :goto_0
.end method

.method static conditionTypes(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "condition":Ljava/lang/Object;
    move-object v5, v0

    check-cast v5, Lgnu/kawa/slib/condition;

    iget-object v5, v5, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v2, v6

    move-object v1, v5

    .local v1, "arg0":Ljava/lang/Object;
    :goto_0
    move-object v5, v1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_0

    move-object v5, v2

    invoke-static {v5}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "condition":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "condition":Ljava/lang/Object;
    :cond_0
    move-object v5, v1

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v4, v6

    :try_start_0
    check-cast v5, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .local v3, "arg0":Lgnu/lists/Pair;
    move-object v5, v3

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    .end local v1    # "arg0":Ljava/lang/Object;
    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v2

    invoke-static {v6, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    move-object v2, v6

    .local v2, "result":Lgnu/lists/Pair;
    move-object v1, v5

    .restart local v1    # "arg0":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "result":Lgnu/lists/Pair;
    .end local v3    # "arg0":Lgnu/lists/Pair;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "arg0"

    const/4 v9, -0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;
    .locals 17

    .prologue
    .line 163
    move-object/from16 v0, p0

    .local v0, "condition":Lgnu/kawa/slib/condition;
    move-object/from16 v1, p1

    .local v1, "type":Lgnu/kawa/slib/condition$Mntype;
    new-instance v9, Lgnu/kawa/slib/conditions$frame;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lgnu/kawa/slib/conditions$frame;-><init>()V

    move-object v2, v9

    move-object v9, v2

    move-object v10, v1

    iput-object v10, v9, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    .line 166
    move-object v9, v2

    iget-object v9, v9, Lgnu/kawa/slib/conditions$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    invoke-static {v9, v10}, Lgnu/kawa/slib/srfi1;->find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 169
    .local v3, "entry":Ljava/lang/Object;
    move-object v9, v3

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v9, v10, :cond_0

    .line 170
    const-string/jumbo v9, "extract-condition: invalid condition type"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v0

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v2

    iget-object v13, v13, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    aput-object v13, v11, v12

    invoke-static {v9, v10}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 172
    :cond_0
    move-object v9, v2

    iget-object v9, v9, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    move-object v10, v2

    iget-object v10, v10, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    iget-object v10, v10, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v6, v11

    move-object v5, v10

    .local v5, "arg0":Ljava/lang/Object;
    :goto_0
    move-object v10, v5

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v10, v11, :cond_1

    move-object v10, v6

    .line 175
    invoke-static {v10}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v10

    invoke-static {v9, v10}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    invoke-static {v9}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v4, v9

    new-instance v9, Lgnu/kawa/slib/condition;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    move-object v0, v9

    .end local v0    # "condition":Lgnu/kawa/slib/condition;
    return-object v0

    .line 172
    .restart local v0    # "condition":Lgnu/kawa/slib/condition;
    :cond_1
    move-object v10, v5

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v8, v11

    :try_start_0
    check-cast v10, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v10

    .local v7, "arg0":Lgnu/lists/Pair;
    move-object v10, v7

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    .end local v5    # "arg0":Ljava/lang/Object;
    move-result-object v10

    move-object v11, v7

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    .line 174
    move-object v8, v11

    .line 175
    .local v8, "field":Ljava/lang/Object;
    move-object v11, v8

    sget-object v12, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v13, v3

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v6

    invoke-static {v11, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    move-object v6, v11

    .local v6, "result":Lgnu/lists/Pair;
    move-object v5, v10

    .restart local v5    # "arg0":Ljava/lang/Object;
    goto :goto_0

    .end local v6    # "result":Lgnu/lists/Pair;
    .end local v7    # "arg0":Lgnu/lists/Pair;
    .end local v8    # "field":Ljava/lang/Object;
    :catch_0
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

    const-string/jumbo v12, "arg0"

    const/4 v13, -0x2

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public static isCondition(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/kawa/slib/condition;

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 13

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "condition":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "type":Lgnu/kawa/slib/condition$Mntype;
    move-object v5, v0

    invoke-static {v5}, Lgnu/kawa/slib/conditions;->conditionTypes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 129
    .local v2, "types":Ljava/lang/Object;
    :goto_0
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v4, v6

    :try_start_0
    check-cast v5, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    invoke-static {v5, v6}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v5

    move v3, v5

    .local v3, "x":Z
    move v5, v3

    if-eqz v5, :cond_0

    move v5, v3

    .line 130
    move v0, v5

    .end local v0    # "condition":Ljava/lang/Object;
    return v0

    .restart local v0    # "condition":Ljava/lang/Object;
    :cond_0
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    .line 129
    .end local v3    # "x":Z
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "condition-subtype?"

    const/4 v9, 0x0

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method static isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "subtype":Lgnu/kawa/slib/condition$Mntype;
    move-object v1, p1

    .local v1, "supertype":Lgnu/kawa/slib/condition$Mntype;
    move-object v3, v0

    move-object v2, v3

    .line 90
    .end local v0    # "subtype":Lgnu/kawa/slib/condition$Mntype;
    .local v2, "subtype":Lgnu/kawa/slib/condition$Mntype;
    :goto_0
    move-object v3, v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 93
    :goto_1
    move v0, v3

    return v0

    .line 90
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 93
    :cond_1
    move-object v3, v2

    iget-object v3, v3, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    check-cast v3, Lgnu/kawa/slib/condition$Mntype;

    move-object v2, v3

    goto :goto_0
.end method

.method public static isConditionType(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/kawa/slib/condition$Mntype;

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method static isError(Ljava/lang/Object;)Z
    .locals 11

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "thing":Ljava/lang/Object;
    move-object v3, v0

    invoke-static {v3}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v3

    move v1, v3

    .line 231
    .local v1, "x":Z
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    sget-object v4, Lgnu/kawa/slib/conditions;->$Amerror:Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    :try_start_0
    check-cast v4, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v4}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "thing":Ljava/lang/Object;
    return v0

    .restart local v0    # "thing":Ljava/lang/Object;
    :cond_0
    move v3, v1

    goto :goto_0

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

    const-string/jumbo v6, "condition-has-type?"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method static isMessageCondition(Ljava/lang/Object;)Z
    .locals 11

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "thing":Ljava/lang/Object;
    move-object v3, v0

    invoke-static {v3}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v3

    move v1, v3

    .line 224
    .local v1, "x":Z
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    sget-object v4, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    :try_start_0
    check-cast v4, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v4}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "thing":Ljava/lang/Object;
    return v0

    .restart local v0    # "thing":Ljava/lang/Object;
    :cond_0
    move v3, v1

    goto :goto_0

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

    const-string/jumbo v6, "condition-has-type?"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method static isSeriousCondition(Ljava/lang/Object;)Z
    .locals 11

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "thing":Ljava/lang/Object;
    move-object v3, v0

    invoke-static {v3}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v3

    move v1, v3

    .line 228
    .local v1, "x":Z
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    sget-object v4, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    :try_start_0
    check-cast v4, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v4}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "thing":Ljava/lang/Object;
    return v0

    .restart local v0    # "thing":Ljava/lang/Object;
    :cond_0
    move v3, v1

    goto :goto_0

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

    const-string/jumbo v6, "condition-has-type?"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static lambda1label(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "plist":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 120
    :goto_0
    move-object v0, v1

    .end local v0    # "plist":Ljava/lang/Object;
    return-object v0

    .line 118
    .restart local v0    # "plist":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 119
    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v2, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    .line 120
    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_0
.end method

.method public static makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 16

    .prologue
    .line 158
    move-object/from16 v0, p0

    .local v0, "condition$Mn1":Ljava/lang/Object;
    move-object/from16 v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v8, v1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v8

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v3, v9

    move-object v2, v8

    .line 159
    .local v2, "conditions":Lgnu/lists/LList;
    sget-object v8, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v9, Lkawa/standard/append;->append:Lkawa/standard/append;

    .line 161
    move-object v10, v0

    move-object v11, v2

    invoke-static {v10, v11}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v5, v11

    move-object v4, v10

    :goto_0
    move-object v10, v4

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v10, v11, :cond_0

    move-object v10, v5

    .line 160
    invoke-static {v10}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    new-instance v8, Lgnu/kawa/slib/condition;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    invoke-direct {v9, v10}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "condition$Mn1":Ljava/lang/Object;
    return-object v0

    .line 161
    .restart local v0    # "condition$Mn1":Ljava/lang/Object;
    :cond_0
    move-object v10, v4

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v7, v11

    :try_start_0
    check-cast v10, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v10

    .local v6, "arg0":Lgnu/lists/Pair;
    move-object v10, v6

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 160
    sget-object v12, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v5

    invoke-static {v11, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    move-object v5, v11

    .local v5, "result":Lgnu/lists/Pair;
    move-object v4, v10

    .local v4, "arg0":Ljava/lang/Object;
    goto :goto_0

    .end local v4    # "arg0":Ljava/lang/Object;
    .end local v5    # "result":Lgnu/lists/Pair;
    .end local v6    # "arg0":Lgnu/lists/Pair;
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

    const-string/jumbo v11, "arg0"

    const/4 v12, -0x2

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 17

    .prologue
    .line 114
    move-object/from16 v0, p0

    .local v0, "type":Lgnu/kawa/slib/condition$Mntype;
    move-object/from16 v1, p1

    .local v1, "argsArray":[Ljava/lang/Object;
    move-object v8, v1

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v8

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v3, v9

    move-object v2, v8

    .line 115
    .local v2, "field$Mnplist":Lgnu/lists/LList;
    move-object v8, v2

    invoke-static {v8}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    .line 121
    .local v3, "alist":Ljava/lang/Object;
    sget-object v8, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    aput-object v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    .line 123
    move-object v12, v3

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v5, v13

    move-object v4, v12

    .local v4, "arg0":Ljava/lang/Object;
    :goto_0
    move-object v12, v4

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v12, v13, :cond_1

    move-object v12, v5

    invoke-static {v12}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9}, Lgnu/kawa/slib/srfi1;->lset$Eq$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_0

    .line 124
    const-string/jumbo v8, "condition fields don\'t match condition type"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 125
    :cond_0
    new-instance v8, Lgnu/kawa/slib/condition;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    move-object v11, v3

    invoke-static {v10, v11}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v10}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-direct {v9, v10}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "type":Lgnu/kawa/slib/condition$Mntype;
    return-object v0

    .line 123
    .restart local v0    # "type":Lgnu/kawa/slib/condition$Mntype;
    :cond_1
    move-object v12, v4

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v7, v13

    :try_start_0
    check-cast v12, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v12

    .local v6, "arg0":Lgnu/lists/Pair;
    move-object v12, v6

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    .end local v4    # "arg0":Ljava/lang/Object;
    move-result-object v12

    sget-object v13, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v14, v6

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v5

    invoke-static {v13, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    move-object v5, v13

    .local v5, "result":Lgnu/lists/Pair;
    move-object v4, v12

    .restart local v4    # "arg0":Ljava/lang/Object;
    goto :goto_0

    .line 125
    .end local v5    # "result":Lgnu/lists/Pair;
    .end local v6    # "arg0":Lgnu/lists/Pair;
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

    const-string/jumbo v11, "arg0"

    const/4 v12, -0x2

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method public static makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;
    .locals 13

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "name":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "supertype":Lgnu/kawa/slib/condition$Mntype;
    move-object v2, p2

    .local v2, "fields":Ljava/lang/Object;
    sget-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    move-object v4, v1

    iget-object v4, v4, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lgnu/kawa/slib/srfi1;->lsetIntersection$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    const-string/jumbo v3, "duplicate field name"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    :cond_0
    new-instance v3, Lgnu/kawa/slib/condition$Mntype;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    invoke-static {v8}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    .end local v0    # "name":Lgnu/mapping/Symbol;
    return-object v0
.end method

.method public static typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 19

    .prologue
    .line 187
    move-object/from16 v0, p0

    .local v0, "type$Mnfield$Mnalist":Ljava/lang/Object;
    move-object v11, v0

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v3, v12

    move-object v2, v11

    .local v2, "arg0":Ljava/lang/Object;
    :goto_0
    move-object v11, v2

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v12, :cond_0

    move-object v11, v3

    .line 192
    invoke-static {v11}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v11

    move-object v1, v11

    new-instance v11, Lgnu/kawa/slib/condition;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    invoke-direct {v12, v13}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    move-object v0, v11

    .end local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    return-object v0

    .line 187
    .restart local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    :cond_0
    move-object v11, v2

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v5, v12

    :try_start_0
    check-cast v11, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v11

    .local v4, "arg0":Lgnu/lists/Pair;
    move-object v11, v4

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    .end local v2    # "arg0":Ljava/lang/Object;
    move-result-object v11

    move-object v12, v4

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    .line 189
    move-object v5, v12

    .line 190
    .local v5, "entry":Ljava/lang/Object;
    sget-object v12, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 195
    move-object v14, v5

    invoke-virtual {v13, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/kawa/slib/condition$Mntype;

    iget-object v13, v13, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v7, v14

    move-object v6, v13

    .end local v4    # "arg0":Lgnu/lists/Pair;
    .local v6, "arg0":Ljava/lang/Object;
    :goto_1
    move-object v13, v6

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v13, v14, :cond_1

    move-object v13, v7

    .line 192
    invoke-static {v13}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v13

    invoke-static {v12, v13}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    move-object v13, v3

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    move-object v3, v12

    .local v3, "result":Lgnu/lists/Pair;
    move-object v2, v11

    .end local v6    # "arg0":Ljava/lang/Object;
    .restart local v2    # "arg0":Ljava/lang/Object;
    goto :goto_0

    .line 195
    .end local v2    # "arg0":Ljava/lang/Object;
    .end local v3    # "result":Lgnu/lists/Pair;
    .restart local v6    # "arg0":Ljava/lang/Object;
    :cond_1
    move-object v13, v6

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v9, v14

    :try_start_1
    check-cast v13, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v13

    .local v8, "arg0":Lgnu/lists/Pair;
    move-object v13, v8

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    .end local v6    # "arg0":Ljava/lang/Object;
    move-result-object v13

    move-object v14, v8

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    .line 191
    move-object v9, v14

    .line 192
    .local v9, "field":Ljava/lang/Object;
    move-object v14, v9

    sget-object v15, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v15}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v10, v14

    .local v10, "x":Ljava/lang/Object;
    move-object v14, v10

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v15, :cond_2

    move-object v14, v10

    :goto_2
    move-object v15, v7

    invoke-static {v14, v15}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v14

    move-object v7, v14

    .local v7, "result":Lgnu/lists/Pair;
    move-object v6, v13

    .restart local v6    # "arg0":Ljava/lang/Object;
    goto :goto_1

    .end local v6    # "arg0":Ljava/lang/Object;
    .end local v7    # "result":Lgnu/lists/Pair;
    :cond_2
    move-object v14, v9

    move-object v15, v0

    move-object/from16 v16, v9

    invoke-static/range {v15 .. v16}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v15}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v14

    goto :goto_2

    .end local v5    # "entry":Ljava/lang/Object;
    .end local v8    # "arg0":Lgnu/lists/Pair;
    .end local v9    # "field":Ljava/lang/Object;
    .end local v10    # "x":Ljava/lang/Object;
    .restart local v2    # "arg0":Ljava/lang/Object;
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

    const-string/jumbo v14, "arg0"

    const/4 v15, -0x2

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11

    .end local v2    # "arg0":Ljava/lang/Object;
    .restart local v5    # "entry":Ljava/lang/Object;
    .restart local v6    # "arg0":Ljava/lang/Object;
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

    const-string/jumbo v14, "arg0"

    const/4 v15, -0x2

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v16}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v11
.end method

.method static typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "type$Mnfield$Mnalist":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "field":Ljava/lang/Object;
    move-object v4, v0

    move-object v2, v4

    .line 150
    .end local v0    # "type$Mnfield$Mnalist":Ljava/lang/Object;
    .local v2, "type$Mnfield$Mnalist":Ljava/lang/Object;
    :goto_0
    move-object v4, v2

    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    const-string/jumbo v4, "type-field-alist-ref: field not found"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    :goto_1
    move-object v0, v4

    return-object v0

    .line 153
    :cond_0
    move-object v4, v1

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 150
    .local v3, "temp":Ljava/lang/Object;
    move-object v4, v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_1

    .line 154
    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 10000
    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 156
    :cond_1
    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
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

    sparse-switch v3, :sswitch_data_0

    .line 187
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 56
    :sswitch_0
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/conditions;->isConditionType(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 111
    :sswitch_1
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v3

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 187
    :sswitch_2
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/conditions;->typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
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

    .line 163
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

    .line 127
    :pswitch_1
    move-object v4, v2

    move-object v5, v3

    :try_start_0
    check-cast v5, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4, v5}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 144
    :pswitch_2
    move-object v4, v2

    :try_start_1
    check-cast v4, Lgnu/kawa/slib/condition;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 163
    :pswitch_3
    move-object v4, v2

    :try_start_2
    check-cast v4, Lgnu/kawa/slib/condition;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v3

    :try_start_3
    check-cast v5, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v4, v5}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 127
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

    const-string/jumbo v7, "condition-has-type?"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 144
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

    const-string/jumbo v7, "condition-ref"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 163
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

    const-string/jumbo v7, "extract-condition"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 164
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

    const-string/jumbo v7, "extract-condition"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 59
    move-object v5, v2

    :try_start_0
    check-cast v5, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v3

    :try_start_1
    check-cast v6, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 4294967295
    .line 59
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "make-condition-type"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 60
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "make-condition-type"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    .line 158
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 114
    :pswitch_1
    move-object v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v3, v5

    :try_start_0
    check-cast v4, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    move v5, v3

    new-array v5, v5, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gez v6, :cond_0

    invoke-static {v4, v5}, Lgnu/kawa/slib/conditions;->makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_0
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

    goto :goto_1

    .line 158
    :pswitch_2
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

    :goto_2
    add-int/lit8 v3, v3, -0x1

    move v6, v3

    if-gez v6, :cond_1

    invoke-static {v4, v5}, Lgnu/kawa/slib/conditions;->makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

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

    goto :goto_2

    .line 114
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

    const-string/jumbo v7, "make-condition"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

    sparse-switch v4, :sswitch_data_0

    .line 56
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 187
    :goto_0
    return v0

    :sswitch_0
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

    .line 111
    :sswitch_1
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

    .line 56
    :sswitch_2
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

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
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

    .line 127
    :pswitch_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 163
    :goto_0
    return v0

    :pswitch_1
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/kawa/slib/condition;

    if-nez v7, :cond_0

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_0
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/kawa/slib/condition$Mntype;

    if-nez v7, :cond_1

    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    :cond_1
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

    .line 144
    :pswitch_2
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/kawa/slib/condition;

    if-nez v7, :cond_2

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_2
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

    .line 127
    :pswitch_3
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/kawa/slib/condition$Mntype;

    if-nez v7, :cond_3

    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    :cond_3
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

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 59
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-nez v8, :cond_1

    const v8, -0xbffff

    move v0, v8

    :goto_0
    return v0

    .line 4294967295
    .line 59
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    goto :goto_0

    :cond_1
    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/kawa/slib/condition$Mntype;

    if-nez v8, :cond_2

    const v8, -0xbfffe

    move v0, v8

    goto :goto_0

    :cond_2
    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

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

    .line 114
    :pswitch_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 158
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

    .line 114
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

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 12

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/conditions;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v4, v1

    iget-object v4, v4, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v4

    .line 36
    .local v2, "$result":Lgnu/lists/Consumer;
    new-instance v4, Lgnu/kawa/slib/condition$Mntype;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    sget-object v6, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v4, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    .line 224
    sget-object v4, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    :try_start_0
    check-cast v5, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v6, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/conditions;->$Ammessage:Ljava/lang/Object;

    .line 228
    sget-object v4, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/conditions;->$Amcondition:Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    :try_start_1
    check-cast v5, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    .line 231
    sget-object v4, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/conditions;->$Amserious:Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    :try_start_2
    check-cast v5, Lgnu/kawa/slib/condition$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/conditions;->$Amerror:Ljava/lang/Object;

    return-void

    .line 224
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

    const-string/jumbo v7, "make-condition-type"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 228
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

    const-string/jumbo v7, "make-condition-type"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 231
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

    const-string/jumbo v7, "make-condition-type"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method
