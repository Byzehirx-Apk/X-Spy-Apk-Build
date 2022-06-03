.class public Lkawa/lib/misc_syntax;
.super Lgnu/expr/ModuleBody;
.source "misc_syntax.scm"


# static fields
.field public static final $Prvt$define$Mnconstant:Lgnu/mapping/Location;

.field public static final $instance:Lkawa/lib/misc_syntax;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lkawa/lang/SyntaxRules;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lkawa/lang/SyntaxPattern;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lkawa/lang/SyntaxPattern;

.field static final Lit17:Lkawa/lang/SyntaxTemplate;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lkawa/lang/SyntaxTemplate;

.field static final Lit22:Lkawa/lang/SyntaxTemplate;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxTemplate;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxPattern;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lkawa/lang/SyntaxPattern;

.field public static final include:Lkawa/lang/Macro;

.field public static final include$Mnrelative:Lkawa/lang/Macro;

.field public static final module$Mnuri:Lkawa/lang/Macro;

.field public static final provide:Lkawa/lang/Macro;

.field public static final resource$Mnurl:Lkawa/lang/Macro;

.field public static final test$Mnbegin:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .prologue
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "%test-begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "quote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "require"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "else"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "cond-expand"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "srfi-64"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "quasiquote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "$lookup$"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit21:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u0008\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "include-relative"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001\u0003"

    const-string/jumbo v4, "\u0011\u0018\u0004\u0008\u0015\u0013"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v24, v5

    move-object/from16 v5, v24

    move-object/from16 v6, v24

    const/4 v7, 0x0

    sget-object v8, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit17:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\r\u0017\u0010\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit16:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u0003"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit13:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "include"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v24, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v24

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string/jumbo v8, "resource-url"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    sput-object v7, Lkawa/lib/misc_syntax;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x1

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0008\u0008\u0011\u0018\u000c\u0099\u0008\u0011\u0018\u000ca\u0008\u0011\u0018\u000c)\u0011\u0018\u0014\u0008\u0003\u0018\u001c\u0018$\u0018,"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string/jumbo v18, "gnu.text.URLPath"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string/jumbo v20, "valueOf"

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

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v18, 0x26007

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/misc_syntax;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string/jumbo v18, "module-uri"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    sput-object v17, Lkawa/lib/misc_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v19, 0x2700b

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string/jumbo v20, "resolve"

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

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v18, 0x2700b

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x3

    sget-object v15, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string/jumbo v18, "toURL"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x4

    sget-object v15, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string/jumbo v18, "openConnection"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x5

    sget-object v15, Lkawa/lib/misc_syntax;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string/jumbo v18, "getURL"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v15 .. v16}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit11:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u000c\u0007\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit9:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v24, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v24

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string/jumbo v8, "test-begin"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    sput-object v7, Lkawa/lib/misc_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x2

    new-array v4, v4, [Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x0

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0008\u0011\u0018\u0014\t\u0003\u0018\u001c"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v20, 0x1501e

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v19, 0x15015

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v22, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v23, 0x15036

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v22, 0x15036

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v22, 0x15035

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v21, 0x1502c

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v21, 0x1502c

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v20, 0x15026

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v20, 0x15026

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v19, 0x15015

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v18, 0x15008

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x3

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v18, 0x16020

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x1

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u0004\u0011\u0018\u000c\u0008\u0011\u0018\u0014\t\u0003\u0008\u000b"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lkawa/lib/misc_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lkawa/lib/misc_syntax;->Lit27:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v20, 0x1901e

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v19, 0x19015

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    sget-object v17, Lkawa/lib/misc_syntax;->Lit28:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lkawa/lib/misc_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lkawa/lib/misc_syntax;->Lit30:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lkawa/lib/misc_syntax;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v22, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v23, 0x19036

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v22, 0x19036

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v22, 0x19035

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v21, 0x1902c

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v21, 0x1902c

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v20, 0x19026

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v20, 0x19026

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v19, 0x19015

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v18, 0x19008

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lkawa/lib/misc_syntax;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u000c\u0007\u000b"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit5:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001\u0001"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v24, v5

    move-object/from16 v5, v24

    move-object/from16 v6, v24

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    const-string/jumbo v10, "::"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "<int>"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    const/16 v10, 0x7b

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v12, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v13, 0xd016

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v12, 0xd010

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm"

    const v11, 0xd00c

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001\u0001"

    const-string/jumbo v4, "\u0013"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit3:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u0001\u0001\u0001"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v24, v5

    move-object/from16 v5, v24

    move-object/from16 v6, v24

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    const-string/jumbo v10, "define-constant"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc_syntax;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "provide"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lib/misc_syntax;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    invoke-direct {v2}, Lkawa/lib/misc_syntax;-><init>()V

    sput-object v1, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    .line 1
    const-string/jumbo v1, "kawa.lib.prim_syntax"

    const-string/jumbo v2, "define$Mnconstant"

    invoke-static {v1, v2}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc_syntax;->$Prvt$define$Mnconstant:Lgnu/mapping/Location;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v24, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v24

    sget-object v4, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    move-object v0, v4

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc_syntax;->provide:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/misc_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc_syntax;->test$Mnbegin:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v24, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v24

    move-object v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object/from16 v24, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v24

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:29"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc_syntax;->module$Mnuri:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/misc_syntax;->Lit11:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc_syntax;->resource$Mnurl:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v24, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v24

    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object/from16 v24, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v24

    const-string/jumbo v4, "source-location"

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:54"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc_syntax;->include:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/misc_syntax;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object/from16 v24, v2

    move-object/from16 v2, v24

    move-object/from16 v3, v24

    move-object v4, v0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc_syntax;->include$Mnrelative:Lkawa/lang/Macro;

    sget-object v1, Lkawa/lib/misc_syntax;->$instance:Lkawa/lib/misc_syntax;

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
    .locals 14

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    move-object v1, v4

    sget-object v4, Lkawa/lib/misc_syntax;->Lit1:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lkawa/lib/misc_syntax;->Lit2:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string/jumbo v9, "%provide%"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v9

    move-object v3, v9

    sget-object v9, Lkawa/lib/misc_syntax;->Lit3:Lkawa/lang/SyntaxTemplate;

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v3, v10

    :try_start_0
    check-cast v9, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v9}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v6

    invoke-static {v6}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v3, v6

    sget-object v6, Lkawa/lib/misc_syntax;->Lit4:Lkawa/lang/SyntaxTemplate;

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .line 15
    :goto_0
    move-object v0, v4

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0

    .line 6
    .restart local v0    # "form":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lkawa/lib/misc_syntax;->Lit5:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    move-object v4, v0

    const-string/jumbo v5, "provide requires a quoted feature-name"

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    check-cast v5, [Ljava/lang/Object;

    :goto_1
    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    move-object v7, v13

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    const/4 v8, 0x0

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    aput-object v8, v6, v7

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "syntax-case"

    move-object v5, v0

    invoke-static {v4, v5}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 12
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v12, v4

    move-object v13, v5

    move-object v4, v13

    move-object v5, v12

    move-object v6, v13

    move-object v12, v5

    move-object v13, v6

    move-object v5, v13

    move-object v6, v12

    const-string/jumbo v7, "symbol->string"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    move-object v1, v3

    sget-object v3, Lkawa/lib/misc_syntax;->Lit9:Lkawa/lang/SyntaxPattern;

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/functions/GetModuleClass;->getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "form":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v3, "syntax-case"

    move-object v4, v0

    invoke-static {v3, v4}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .prologue
    .line 54
    move-object/from16 v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v9, v0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    move-object v1, v9

    sget-object v9, Lkawa/lib/misc_syntax;->Lit13:Lkawa/lang/SyntaxPattern;

    move-object v10, v0

    move-object v11, v2

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v9

    move-object v4, v9

    sget-object v9, Lkawa/lib/misc_syntax;->Lit14:Lkawa/lang/SyntaxTemplate;

    move-object v10, v2

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 66
    .local v3, "fn":Ljava/lang/Object;
    move-object v9, v3

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v10

    move-object v5, v10

    sget-object v10, Lkawa/lib/misc_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v10

    .line 56
    move-object v6, v10

    move-object v5, v9

    .end local v3    # "fn":Ljava/lang/Object;
    .local v5, "fn":Ljava/lang/Object;
    new-instance v9, Lkawa/lib/misc_syntax$frame;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Lkawa/lib/misc_syntax$frame;-><init>()V

    move-object v7, v9

    move-object v9, v7

    move-object v10, v6

    iput-object v10, v9, Lkawa/lib/misc_syntax$frame;->k:Ljava/lang/Object;

    .line 57
    move-object v9, v5

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v8, v10

    :try_start_0
    invoke-static {v9}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-static {v9}, Lkawa/lib/ports;->openInputFile(Lgnu/text/Path;)Lgnu/mapping/InPort;

    move-result-object v9

    move-object v10, v7

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v16

    move-object v10, v15

    iput-object v10, v9, Lkawa/lib/misc_syntax$frame;->p:Lgnu/mapping/InPort;

    .line 58
    move-object v9, v7

    invoke-virtual {v9}, Lkawa/lib/misc_syntax$frame;->lambda4f()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x3

    move-object v11, v2

    invoke-static {v10, v11}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    move-object v4, v9

    sget-object v9, Lkawa/lib/misc_syntax;->Lit16:Lkawa/lang/SyntaxPattern;

    .end local v5    # "fn":Ljava/lang/Object;
    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 67
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v9

    move-object v6, v9

    sget-object v9, Lkawa/lib/misc_syntax;->Lit17:Lkawa/lang/SyntaxTemplate;

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v9

    :goto_0
    move-object v0, v9

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v9, "syntax-case"

    move-object v10, v4

    invoke-static {v9, v10}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "syntax-case"

    move-object v10, v0

    invoke-static {v9, v10}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 57
    .restart local v5    # "fn":Ljava/lang/Object;
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

    const-string/jumbo v12, "open-input-file"

    const/4 v13, 0x1

    move-object v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method static lambda5(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x":Ljava/lang/Object;
    move-object v7, v0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    move-object v1, v7

    sget-object v7, Lkawa/lib/misc_syntax;->Lit19:Lkawa/lang/SyntaxPattern;

    move-object v8, v0

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v7

    move-object v4, v7

    sget-object v7, Lkawa/lib/misc_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v4, v8

    :try_start_0
    check-cast v7, Lgnu/lists/PairWithPosition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v7

    .local v3, "path$Mnpair":Lgnu/lists/PairWithPosition;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v7

    move-object v4, v7

    .line 75
    .local v4, "base":Lgnu/text/Path;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .local v5, "fname":Ljava/lang/String;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v7

    move-object v6, v7

    sget-object v7, Lkawa/lib/misc_syntax;->Lit21:Lkawa/lang/SyntaxTemplate;

    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lkawa/lib/misc_syntax;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {v7, v8}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v6, v8

    sget-object v8, Lkawa/lib/misc_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    move-object v9, v2

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v9

    invoke-virtual {v9}, Lgnu/text/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    .end local v3    # "path$Mnpair":Lgnu/lists/PairWithPosition;
    .end local v4    # "base":Lgnu/text/Path;
    .end local v5    # "fname":Ljava/lang/String;
    :goto_0
    move-object v0, v7

    .end local v0    # "x":Ljava/lang/Object;
    return-object v0

    .restart local v0    # "x":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v7, "syntax-case"

    move-object v8, v0

    invoke-static {v7, v8}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 73
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    move-object v13, v8

    move-object v14, v9

    move-object v8, v14

    move-object v9, v13

    const-string/jumbo v10, "path-pair"

    const/4 v11, -0x2

    move-object v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
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

    .line 54
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    :pswitch_0
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/misc_syntax;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 29
    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/misc_syntax;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 54
    :pswitch_2
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/misc_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_3
    move-object v3, v2

    invoke-static {v3}, Lkawa/lib/misc_syntax;->lambda5(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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

    packed-switch v4, :pswitch_data_0

    .line 29
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 54
    :goto_0
    return v0

    .line 4294967295
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

    .line 54
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

    .line 29
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

    :pswitch_3
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lkawa/lib/misc_syntax;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
