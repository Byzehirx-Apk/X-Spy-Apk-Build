.class public Lgnu/kawa/slib/enums;
.super Lgnu/expr/ModuleBody;
.source "enums.scm"


# static fields
.field public static final $Prvt$$Pcdefine$Mnenum:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/enums;

.field static final Lit0:Lgnu/lists/PairWithPosition;

.field static final Lit1:Lgnu/lists/PairWithPosition;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lkawa/lang/SyntaxPattern;

.field static final Lit13:Lkawa/lang/SyntaxTemplate;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxPattern;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxPattern;

.field static final Lit18:Lkawa/lang/SyntaxPattern;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lkawa/lang/SyntaxPattern;

.field static final Lit23:Lkawa/lang/SyntaxTemplate;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lkawa/lang/SyntaxTemplate;

.field static final Lit26:Lkawa/lang/SyntaxTemplate;

.field static final Lit27:Lkawa/lang/SyntaxTemplate;

.field static final Lit28:Lkawa/lang/SyntaxTemplate;

.field static final Lit29:Lkawa/lang/SyntaxTemplate;

.field static final Lit3:Lgnu/lists/PairWithPosition;

.field static final Lit30:Lkawa/lang/SyntaxTemplate;

.field static final Lit31:Lkawa/lang/SyntaxTemplate;

.field static final Lit32:Lkawa/lang/SyntaxTemplate;

.field static final Lit33:Lkawa/lang/SyntaxTemplate;

.field static final Lit34:Lkawa/lang/SyntaxTemplate;

.field static final Lit35:Lkawa/lang/SyntaxTemplate;

.field static final Lit36:Lkawa/lang/SyntaxTemplate;

.field static final Lit37:Lkawa/lang/SyntaxTemplate;

.field static final Lit38:Lkawa/lang/SyntaxTemplate;

.field static final Lit39:Lkawa/lang/SyntaxTemplate;

.field static final Lit4:Lgnu/lists/PairWithPosition;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit43:Lgnu/mapping/SimpleSymbol;

.field static final Lit44:Lgnu/mapping/SimpleSymbol;

.field static final Lit45:Lgnu/mapping/SimpleSymbol;

.field static final Lit46:Lgnu/expr/Keyword;

.field static final Lit47:Lgnu/mapping/SimpleSymbol;

.field static final Lit48:Lgnu/expr/Keyword;

.field static final Lit49:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/lists/PairWithPosition;

.field static final Lit50:Lgnu/mapping/SimpleSymbol;

.field static final Lit51:Lgnu/mapping/SimpleSymbol;

.field static final Lit52:Lgnu/mapping/SimpleSymbol;

.field static final Lit53:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/lists/PairWithPosition;

.field static final Lit7:Lgnu/lists/PairWithPosition;

.field static final Lit8:Lgnu/lists/PairWithPosition;

.field static final Lit9:Lgnu/lists/PairWithPosition;

.field public static final define$Mnenum:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .prologue
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "final"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit53:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "enum"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit52:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "num"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit51:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "str"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit50:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "*init*"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit49:Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "access"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "String"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit47:Lgnu/mapping/SimpleSymbol;

    const-string/jumbo v1, "allocation"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "static"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "java.lang.Enum"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "quote"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "::"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "s"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "valueOf"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0010"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit39:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0010"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit38:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x47042

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit37:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "$lookup$"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string/jumbo v12, "quasiquote"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/kawa/slib/enums;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v11, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v11}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x47007

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit36:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v12, 0x46013

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x46013

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit35:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x46006

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit34:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x45019

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit33:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit40:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/slib/enums;->Lit41:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/kawa/slib/enums;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v13, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v14, 0x45012

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string/jumbo v12, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v13, 0x45010

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v12, 0x4500f

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x45006

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit32:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/slib/enums;->Lit52:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/kawa/slib/enums;->Lit53:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v12, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v13, 0x4102c

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v12, 0x41026

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v12, 0x41026

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x41026

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit31:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x4101d

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit30:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x4100c

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit29:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0018\u0004"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "define-simple-class"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x4000a

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit28:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0008%#"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit27:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0013"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit26:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0008\u001d\u001b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit25:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "[]"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u000b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit23:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u000c\u0017,\r\u001f\u0018\u0008\u0008\r\' \u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit22:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "%define-enum"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0003"

    const-string/jumbo v4, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u000b\t\u0010\u0008\u0015\u0013"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    const-string/jumbo v10, "define-enum"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    sput-object v9, Lgnu/kawa/slib/enums;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x1

    const-string/jumbo v8, "findkeywords"

    aput-object v8, v6, v7

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\r\u0017\u0010\u0008\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u000c\u0007\u000c\u000f\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit18:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u000c\u0007\u0008"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit17:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0003\u0003"

    const-string/jumbo v4, "\u0011\u0018\u0004\t\u000b\u0019\u0008\u0015\u0013\u0008\u001d\u001b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit21:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u000c\u0007\u000c\u0002\u000c\u000f,\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const/4 v6, 0x0

    const-string/jumbo v7, "findkeywords"

    aput-object v7, v5, v6

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit15:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0003\u0001\u0001\u0003"

    const-string/jumbo v4, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u000b9\t\u001b\t#\u0008\u0015\u0013\u0008-+"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/enums;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v6, v7

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x1

    const-string/jumbo v8, "findkeywords"

    aput-object v8, v6, v7

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u0001\u0001\u0003\u0001\u0001\u0003"

    const-string/jumbo v4, "\u001b"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit13:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "\u000c\u0007\u000c\u0002\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f\u000c\'\r/(\u0008\u0008"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const/4 v6, 0x0

    const-string/jumbo v7, "findkeywords"

    aput-object v7, v5, v6

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit12:Lkawa/lang/SyntaxPattern;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v5, 0x1f025

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1f025

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit10:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1f018

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit9:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1f00e

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit8:Lgnu/lists/PairWithPosition;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    const-string/jumbo v3, "values"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1f005

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit7:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit49:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/enums;->Lit50:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit47:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v7, 0x16015

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v6, 0x16012

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v5, 0x1600d

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/enums;->Lit51:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const-string/jumbo v7, "int"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v8, 0x16025

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v7, 0x16022

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v6, 0x1601d

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v6, 0x1601d

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v5, 0x1600d

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x16005

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    sget-object v3, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const-string/jumbo v6, "private"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v7, 0x1700e

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v6, 0x1700e

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    move-object v15, v4

    move-object v4, v15

    move-object v5, v15

    const-string/jumbo v6, "invoke-special"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const-string/jumbo v8, "this"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v9, 0x18024

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/slib/enums;->Lit49:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x1802c

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string/jumbo v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v10, 0x1802c

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    sget-object v8, Lgnu/kawa/slib/enums;->Lit50:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/kawa/slib/enums;->Lit51:Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v11, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v12, 0x18037

    invoke-static {v9, v10, v11, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string/jumbo v10, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v11, 0x18033

    invoke-static {v8, v9, v10, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string/jumbo v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v10, 0x1802b

    invoke-static {v7, v8, v9, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string/jumbo v8, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v9, 0x18024

    invoke-static {v6, v7, v8, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string/jumbo v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v8, 0x18015

    invoke-static {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v7, 0x18005

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v7, 0x18005

    invoke-static {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v6, 0x1700d

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v5, 0x17005

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x16004

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit6:Lgnu/lists/PairWithPosition;

    const-string/jumbo v1, "init"

    invoke-static {v1}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1200d

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit5:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/enums;->Lit52:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/kawa/slib/enums;->Lit53:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v5, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v6, 0x11030

    invoke-static {v3, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v5, 0x1102a

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v5, 0x1102a

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1102a

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit4:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x11021

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit3:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v5, 0x1101a

    invoke-static {v2, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1101a

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit2:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1100d

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit1:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    const v4, 0x1000d

    invoke-static {v1, v2, v3, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit0:Lgnu/lists/PairWithPosition;

    new-instance v1, Lgnu/kawa/slib/enums;

    move-object v15, v1

    move-object v1, v15

    move-object v2, v15

    invoke-direct {v2}, Lgnu/kawa/slib/enums;-><init>()V

    sput-object v1, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    .line 5
    sget-object v1, Lgnu/kawa/slib/enums;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v15, v2

    move-object v2, v15

    move-object v3, v15

    sget-object v4, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    move-object v0, v4

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->define$Mnenum:Lkawa/lang/Macro;

    sget-object v1, Lgnu/kawa/slib/enums;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/expr/ModuleMethod;

    move-object v15, v2

    move-object v2, v15

    move-object v3, v15

    move-object v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x1001

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->$Prvt$$Pcdefine$Mnenum:Lkawa/lang/Macro;

    sget-object v1, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

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
    .locals 11

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    move-object v1, v4

    sget-object v4, Lgnu/kawa/slib/enums;->Lit12:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/enums;->Lit13:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/enums;->Lit14:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    .line 45
    :goto_0
    move-object v0, v4

    .end local v0    # "form":Ljava/lang/Object;
    return-object v0

    .line 39
    .restart local v0    # "form":Ljava/lang/Object;
    :cond_0
    sget-object v4, Lgnu/kawa/slib/enums;->Lit15:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/enums;->Lit16:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    sget-object v4, Lgnu/kawa/slib/enums;->Lit17:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    move-object v4, v0

    const-string/jumbo v5, "no enum type name given"

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

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

    move-object v9, v5

    move-object v10, v6

    move-object v5, v10

    move-object v6, v9

    move-object v7, v10

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    const/4 v8, 0x0

    move-object v9, v7

    move v10, v8

    move v7, v10

    move-object v8, v9

    aput-object v8, v6, v7

    goto :goto_1

    :cond_3
    sget-object v4, Lgnu/kawa/slib/enums;->Lit18:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 43
    move-object v4, v0

    const-string/jumbo v5, "no enum constants given"

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    instance-of v6, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    check-cast v5, [Ljava/lang/Object;

    :goto_2
    invoke-static {v4, v5}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v9, v5

    move-object v10, v6

    move-object v5, v10

    move-object v6, v9

    move-object v7, v10

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    const/4 v8, 0x0

    move-object v9, v7

    move v10, v8

    move v7, v10

    move-object v8, v9

    aput-object v8, v6, v7

    goto :goto_2

    :cond_5
    sget-object v4, Lgnu/kawa/slib/enums;->Lit19:Lkawa/lang/SyntaxPattern;

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 45
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Lgnu/kawa/slib/enums;->Lit20:Lkawa/lang/SyntaxTemplate;

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "syntax-case"

    move-object v5, v0

    invoke-static {v4, v5}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 54

    .prologue
    .line 53
    move-object/from16 v1, p0

    .local v1, "form":Ljava/lang/Object;
    move-object v14, v1

    const/4 v15, 0x5

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v3, v15

    move-object v2, v14

    sget-object v14, Lgnu/kawa/slib/enums;->Lit22:Lkawa/lang/SyntaxPattern;

    move-object v15, v1

    move-object/from16 v16, v3

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 55
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object v5, v14

    sget-object v14, Lgnu/kawa/slib/enums;->Lit23:Lkawa/lang/SyntaxTemplate;

    move-object v15, v3

    move-object/from16 v16, v5

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    move-object v6, v15

    :try_start_0
    check-cast v14, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v14

    .line 56
    .local v4, "t$Mnname":Lgnu/mapping/Symbol;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    const/16 v16, 0x0

    move-object/from16 v17, v4

    aput-object v17, v15, v16

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    const/16 v16, 0x1

    sget-object v17, Lgnu/kawa/slib/enums;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v17, v15, v16

    invoke-static {v14}, Lgnu/kawa/slib/enums;->symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;

    move-result-object v14

    move-object v5, v14

    .line 55
    .local v5, "t$Mnarr":Lgnu/mapping/Symbol;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object v7, v14

    sget-object v14, Lgnu/kawa/slib/enums;->Lit25:Lkawa/lang/SyntaxTemplate;

    move-object v15, v3

    move-object/from16 v16, v7

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    move-object v8, v15

    :try_start_1
    check-cast v14, Lgnu/lists/LList;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v14

    .local v6, "e$Mnnames":Lgnu/lists/LList;
    move-object v14, v6

    invoke-static {v14}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v14

    move-object v14, v4

    move-object v15, v6

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lgnu/kawa/slib/enums;->mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;

    move-result-object v14

    move-object v7, v14

    .local v7, "field$Mndescs":Lgnu/lists/LList;
    invoke-static {}, Lgnu/kawa/slib/enums;->makeInit()Lgnu/lists/PairWithPosition;

    move-result-object v14

    move-object v8, v14

    .local v8, "init":Lgnu/lists/LList;
    move-object v14, v5

    move-object v15, v6

    invoke-static {v14, v15}, Lgnu/kawa/slib/enums;->makeValues(Lgnu/mapping/Symbol;Lgnu/lists/LList;)Lgnu/lists/Pair;

    move-result-object v14

    move-object v9, v14

    .local v9, "values$Mnmethod":Lgnu/lists/LList;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object v11, v14

    sget-object v14, Lgnu/kawa/slib/enums;->Lit26:Lkawa/lang/SyntaxTemplate;

    move-object v15, v3

    move-object/from16 v16, v11

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    move-object v12, v15

    :try_start_2
    check-cast v14, Lgnu/lists/LList;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v10, v14

    .local v10, "opts":Lgnu/lists/LList;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object v12, v14

    sget-object v14, Lgnu/kawa/slib/enums;->Lit27:Lkawa/lang/SyntaxTemplate;

    move-object v15, v3

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    move-object v13, v15

    :try_start_3
    check-cast v14, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v11, v14

    .line 64
    .local v11, "other$Mndefs":Lgnu/lists/LList;
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v14

    move-object v12, v14

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    const/16 v16, 0x0

    sget-object v17, Lgnu/kawa/slib/enums;->Lit28:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v52, v14

    move-object/from16 v14, v52

    move-object/from16 v15, v52

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v52, v17

    move-object/from16 v17, v52

    move-object/from16 v18, v52

    const/16 v19, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v4

    invoke-static/range {v20 .. v21}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v52, v17

    move-object/from16 v17, v52

    move-object/from16 v18, v52

    const/16 v19, 0x1

    sget-object v20, Lgnu/kawa/slib/enums;->Lit29:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    invoke-virtual/range {v20 .. v22}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v52, v21

    move-object/from16 v21, v52

    move-object/from16 v22, v52

    const/16 v23, 0x0

    sget-object v24, Lgnu/kawa/slib/enums;->Lit30:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v25, v3

    move-object/from16 v26, v12

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v52, v21

    move-object/from16 v21, v52

    move-object/from16 v22, v52

    const/16 v23, 0x1

    sget-object v24, Lgnu/kawa/slib/enums;->Lit31:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v25, v3

    move-object/from16 v26, v12

    invoke-virtual/range {v24 .. v26}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v52, v25

    move-object/from16 v25, v52

    move-object/from16 v26, v52

    const/16 v27, 0x0

    move-object/from16 v28, v1

    move-object/from16 v29, v10

    invoke-static/range {v28 .. v29}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v52, v25

    move-object/from16 v25, v52

    move-object/from16 v26, v52

    const/16 v27, 0x1

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v52, v28

    move-object/from16 v28, v52

    move-object/from16 v29, v52

    const/16 v30, 0x0

    move-object/from16 v31, v1

    move-object/from16 v32, v8

    invoke-static/range {v31 .. v32}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v52, v28

    move-object/from16 v28, v52

    move-object/from16 v29, v52

    const/16 v30, 0x1

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v52, v31

    move-object/from16 v31, v52

    move-object/from16 v32, v52

    const/16 v33, 0x0

    move-object/from16 v34, v1

    move-object/from16 v35, v9

    invoke-static/range {v34 .. v35}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    aput-object v34, v32, v33

    move-object/from16 v52, v31

    move-object/from16 v31, v52

    move-object/from16 v32, v52

    const/16 v33, 0x1

    sget-object v34, Lgnu/kawa/slib/enums;->Lit32:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v35, v3

    move-object/from16 v36, v12

    invoke-virtual/range {v34 .. v36}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    move-object/from16 v52, v35

    move-object/from16 v35, v52

    move-object/from16 v36, v52

    const/16 v37, 0x0

    sget-object v38, Lgnu/kawa/slib/enums;->Lit33:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v39, v3

    move-object/from16 v40, v12

    invoke-virtual/range {v38 .. v40}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v52, v35

    move-object/from16 v35, v52

    move-object/from16 v36, v52

    const/16 v37, 0x1

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v52, v38

    move-object/from16 v38, v52

    move-object/from16 v39, v52

    const/16 v40, 0x0

    move-object/from16 v41, v1

    move-object/from16 v42, v4

    invoke-static/range {v41 .. v42}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v52, v38

    move-object/from16 v38, v52

    move-object/from16 v39, v52

    const/16 v40, 0x1

    const/16 v41, 0x2

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 v52, v41

    move-object/from16 v41, v52

    move-object/from16 v42, v52

    const/16 v43, 0x0

    sget-object v44, Lgnu/kawa/slib/enums;->Lit34:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v45, v3

    move-object/from16 v46, v12

    invoke-virtual/range {v44 .. v46}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v44

    aput-object v44, v42, v43

    move-object/from16 v52, v41

    move-object/from16 v41, v52

    move-object/from16 v42, v52

    const/16 v43, 0x1

    sget-object v44, Lgnu/kawa/slib/enums;->Lit35:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v45, v3

    move-object/from16 v46, v12

    invoke-virtual/range {v44 .. v46}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v44

    sget-object v45, Lgnu/kawa/slib/enums;->Lit36:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v46, v3

    move-object/from16 v47, v12

    invoke-virtual/range {v45 .. v47}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v45

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    move-object/from16 v52, v46

    move-object/from16 v46, v52

    move-object/from16 v47, v52

    const/16 v48, 0x0

    move-object/from16 v49, v1

    move-object/from16 v50, v4

    invoke-static/range {v49 .. v50}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v52, v46

    move-object/from16 v46, v52

    move-object/from16 v47, v52

    const/16 v48, 0x1

    sget-object v49, Lgnu/kawa/slib/enums;->Lit37:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v50, v3

    move-object/from16 v51, v12

    invoke-virtual/range {v49 .. v51}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v46}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v45

    sget-object v46, Lgnu/kawa/slib/enums;->Lit38:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v47, v3

    move-object/from16 v48, v12

    invoke-virtual/range {v46 .. v48}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v44

    aput-object v44, v42, v43

    invoke-static/range {v41 .. v41}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-static/range {v38 .. v38}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v35}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    move-object/from16 v52, v35

    move-object/from16 v35, v52

    move-object/from16 v36, v52

    const/16 v37, 0x0

    move-object/from16 v38, v1

    move-object/from16 v39, v7

    invoke-static/range {v38 .. v39}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v52, v35

    move-object/from16 v35, v52

    move-object/from16 v36, v52

    const/16 v37, 0x1

    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v52, v38

    move-object/from16 v38, v52

    move-object/from16 v39, v52

    const/16 v40, 0x0

    move-object/from16 v41, v1

    move-object/from16 v42, v11

    invoke-static/range {v41 .. v42}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    aput-object v41, v39, v40

    move-object/from16 v52, v38

    move-object/from16 v38, v52

    move-object/from16 v39, v52

    const/16 v40, 0x1

    sget-object v41, Lgnu/kawa/slib/enums;->Lit39:Lkawa/lang/SyntaxTemplate;

    move-object/from16 v42, v3

    move-object/from16 v43, v12

    invoke-virtual/range {v41 .. v43}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v41

    aput-object v41, v39, v40

    invoke-static/range {v38 .. v38}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v35}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v31}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v28}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v25}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v21}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v17}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v4    # "t$Mnname":Lgnu/mapping/Symbol;
    .end local v5    # "t$Mnarr":Lgnu/mapping/Symbol;
    .end local v6    # "e$Mnnames":Lgnu/lists/LList;
    .end local v7    # "field$Mndescs":Lgnu/lists/LList;
    .end local v8    # "init":Lgnu/lists/LList;
    .end local v9    # "values$Mnmethod":Lgnu/lists/LList;
    .end local v10    # "opts":Lgnu/lists/LList;
    .end local v11    # "other$Mndefs":Lgnu/lists/LList;
    :goto_0
    move-object v1, v14

    .end local v1    # "form":Ljava/lang/Object;
    return-object v1

    .restart local v1    # "form":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v14, "syntax-case"

    move-object v15, v1

    invoke-static {v14, v15}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 55
    :catch_0
    move-exception v14

    new-instance v15, Lgnu/mapping/WrongType;

    move-object/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v14, v53

    move-object/from16 v15, v52

    move-object/from16 v16, v53

    move-object/from16 v52, v15

    move-object/from16 v53, v16

    move-object/from16 v15, v53

    move-object/from16 v16, v52

    const-string/jumbo v17, "t-name"

    const/16 v18, -0x2

    move-object/from16 v19, v6

    invoke-direct/range {v15 .. v19}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14

    .line 57
    .restart local v4    # "t$Mnname":Lgnu/mapping/Symbol;
    .restart local v5    # "t$Mnarr":Lgnu/mapping/Symbol;
    :catch_1
    move-exception v14

    new-instance v15, Lgnu/mapping/WrongType;

    move-object/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v14, v53

    move-object/from16 v15, v52

    move-object/from16 v16, v53

    move-object/from16 v52, v15

    move-object/from16 v53, v16

    move-object/from16 v15, v53

    move-object/from16 v16, v52

    const-string/jumbo v17, "e-names"

    const/16 v18, -0x2

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v19}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14

    .line 62
    .restart local v6    # "e$Mnnames":Lgnu/lists/LList;
    .restart local v7    # "field$Mndescs":Lgnu/lists/LList;
    .restart local v8    # "init":Lgnu/lists/LList;
    .restart local v9    # "values$Mnmethod":Lgnu/lists/LList;
    :catch_2
    move-exception v14

    new-instance v15, Lgnu/mapping/WrongType;

    move-object/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v14, v53

    move-object/from16 v15, v52

    move-object/from16 v16, v53

    move-object/from16 v52, v15

    move-object/from16 v53, v16

    move-object/from16 v15, v53

    move-object/from16 v16, v52

    const-string/jumbo v17, "opts"

    const/16 v18, -0x2

    move-object/from16 v19, v12

    invoke-direct/range {v15 .. v19}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14

    .line 63
    .restart local v10    # "opts":Lgnu/lists/LList;
    :catch_3
    move-exception v14

    new-instance v15, Lgnu/mapping/WrongType;

    move-object/from16 v52, v14

    move-object/from16 v53, v15

    move-object/from16 v14, v53

    move-object/from16 v15, v52

    move-object/from16 v16, v53

    move-object/from16 v52, v15

    move-object/from16 v53, v16

    move-object/from16 v15, v53

    move-object/from16 v16, v52

    const-string/jumbo v17, "other-defs"

    const/16 v18, -0x2

    move-object/from16 v19, v13

    invoke-direct/range {v15 .. v19}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14
.end method

.method static makeFieldDesc(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;I)Ljava/lang/Object;
    .locals 35

    .prologue
    .line 11
    move-object/from16 v1, p0

    .local v1, "t$Mnname":Lgnu/mapping/Symbol;
    move-object/from16 v2, p1

    .local v2, "e$Mnname":Lgnu/mapping/Symbol;
    move/from16 v3, p2

    .local v3, "e$Mnval":I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v34, v4

    move-object/from16 v4, v34

    move-object/from16 v5, v34

    const/4 v6, 0x0

    move-object v7, v2

    aput-object v7, v5, v6

    move-object/from16 v34, v4

    move-object/from16 v4, v34

    move-object/from16 v5, v34

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v34, v7

    move-object/from16 v7, v34

    move-object/from16 v8, v34

    const/4 v9, 0x0

    sget-object v10, Lgnu/kawa/slib/enums;->Lit0:Lgnu/lists/PairWithPosition;

    aput-object v10, v8, v9

    move-object/from16 v34, v7

    move-object/from16 v7, v34

    move-object/from16 v8, v34

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v34, v10

    move-object/from16 v10, v34

    move-object/from16 v11, v34

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    move-object/from16 v34, v10

    move-object/from16 v10, v34

    move-object/from16 v11, v34

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v34, v13

    move-object/from16 v13, v34

    move-object/from16 v14, v34

    const/4 v15, 0x0

    sget-object v16, Lgnu/kawa/slib/enums;->Lit1:Lgnu/lists/PairWithPosition;

    aput-object v16, v14, v15

    move-object/from16 v34, v13

    move-object/from16 v13, v34

    move-object/from16 v14, v34

    const/4 v15, 0x1

    sget-object v16, Lgnu/kawa/slib/enums;->Lit2:Lgnu/lists/PairWithPosition;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v34, v17

    move-object/from16 v17, v34

    move-object/from16 v18, v34

    const/16 v19, 0x0

    sget-object v20, Lgnu/kawa/slib/enums;->Lit3:Lgnu/lists/PairWithPosition;

    aput-object v20, v18, v19

    move-object/from16 v34, v17

    move-object/from16 v17, v34

    move-object/from16 v18, v34

    const/16 v19, 0x1

    sget-object v20, Lgnu/kawa/slib/enums;->Lit4:Lgnu/lists/PairWithPosition;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v34, v21

    move-object/from16 v21, v34

    move-object/from16 v22, v34

    const/16 v23, 0x0

    sget-object v24, Lgnu/kawa/slib/enums;->Lit5:Lgnu/lists/PairWithPosition;

    aput-object v24, v22, v23

    move-object/from16 v34, v21

    move-object/from16 v21, v34

    move-object/from16 v22, v34

    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    const/16 v26, 0x0

    move-object/from16 v27, v1

    aput-object v27, v25, v26

    move-object/from16 v34, v24

    move-object/from16 v24, v34

    move-object/from16 v25, v34

    const/16 v26, 0x1

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    const/16 v29, 0x0

    move-object/from16 v30, v2

    invoke-static/range {v30 .. v30}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    const/16 v29, 0x1

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v34, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v34

    const/16 v32, 0x0

    move/from16 v33, v3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v34, v30

    move-object/from16 v30, v34

    move-object/from16 v31, v34

    const/16 v32, 0x1

    sget-object v33, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v30}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v27}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v24}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static/range {v24 .. v25}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v21}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v17}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "t$Mnname":Lgnu/mapping/Symbol;
    return-object v1
.end method

.method static makeInit()Lgnu/lists/PairWithPosition;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lgnu/kawa/slib/enums;->Lit6:Lgnu/lists/PairWithPosition;

    return-object v0
.end method

.method static makeValues(Lgnu/mapping/Symbol;Lgnu/lists/LList;)Lgnu/lists/Pair;
    .locals 22

    .prologue
    .line 26
    move-object/from16 v1, p0

    .local v1, "t$Mnarr":Lgnu/mapping/Symbol;
    move-object/from16 v2, p1

    .local v2, "e$Mnnames":Lgnu/lists/LList;
    sget-object v3, Lgnu/kawa/slib/enums;->Lit7:Lgnu/lists/PairWithPosition;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x0

    sget-object v7, Lgnu/kawa/slib/enums;->Lit8:Lgnu/lists/PairWithPosition;

    aput-object v7, v5, v6

    move-object/from16 v21, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v21

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object/from16 v21, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v21

    const/4 v9, 0x1

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    const/4 v12, 0x0

    sget-object v13, Lgnu/kawa/slib/enums;->Lit9:Lgnu/lists/PairWithPosition;

    aput-object v13, v11, v12

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    const/4 v12, 0x1

    sget-object v13, Lgnu/kawa/slib/enums;->Lit10:Lgnu/lists/PairWithPosition;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x0

    move-object/from16 v17, v1

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v2

    aput-object v20, v18, v19

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x1

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v17}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v14, v15}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

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

    invoke-static {v3, v4}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "t$Mnarr":Lgnu/mapping/Symbol;
    return-object v1
.end method

.method static mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;
    .locals 12

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "t$Mnname":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "e$Mnnames":Lgnu/lists/LList;
    move v2, p2

    .local v2, "i":I
    move-object v4, v1

    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 50
    :goto_0
    move-object v0, v4

    .end local v0    # "t$Mnname":Lgnu/mapping/Symbol;
    return-object v0

    .line 49
    .restart local v0    # "t$Mnname":Lgnu/mapping/Symbol;
    :cond_0
    move-object v4, v0

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    :try_start_0
    check-cast v5, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v2

    invoke-static {v4, v5, v6}, Lgnu/kawa/slib/enums;->makeFieldDesc(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v0

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 50
    move-object v7, v1

    invoke-virtual {v6, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    :try_start_1
    check-cast v6, Lgnu/lists/LList;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/enums;->mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;

    move-result-object v5

    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    goto :goto_0

    .line 49
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

    const-string/jumbo v7, "make-field-desc"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 50
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

    const-string/jumbo v7, "map-names"

    const/4 v8, 0x1

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method static symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;
    .locals 14

    .prologue
    .line 7
    move-object v0, p0

    .local v0, "argsArray":[Ljava/lang/Object;
    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    move-object v1, v6

    .line 9
    .local v1, "syms":Lgnu/lists/LList;
    sget-object v6, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v7, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    move-object v8, v1

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v3, v9

    move-object v2, v8

    :goto_0
    move-object v8, v2

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v8, v9, :cond_0

    move-object v8, v3

    invoke-static {v8}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v2, v7

    :try_start_0
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v6}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "argsArray":[Ljava/lang/Object;
    return-object v0

    .restart local v0    # "argsArray":[Ljava/lang/Object;
    :cond_0
    move-object v8, v2

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v5, v9

    :try_start_1
    check-cast v8, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v8

    .local v4, "arg0":Lgnu/lists/Pair;
    move-object v8, v4

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v5, v10

    :try_start_2
    check-cast v9, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {v9}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-static {v9, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    move-object v3, v9

    .local v3, "result":Lgnu/lists/Pair;
    move-object v2, v8

    .local v2, "arg0":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "arg0":Ljava/lang/Object;
    .end local v3    # "result":Lgnu/lists/Pair;
    .end local v4    # "arg0":Lgnu/lists/Pair;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "arg0"

    const/4 v10, -0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .restart local v4    # "arg0":Lgnu/lists/Pair;
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "symbol->string"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .end local v4    # "arg0":Lgnu/lists/Pair;
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "string->symbol"

    const/4 v10, 0x1

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v3, :pswitch_data_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/enums;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_1
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/enums;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v4, :pswitch_data_0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/enums;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 7
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
