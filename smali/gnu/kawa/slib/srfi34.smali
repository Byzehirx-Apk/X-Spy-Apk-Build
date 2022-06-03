.class public Lgnu/kawa/slib/srfi34;
.super Lgnu/expr/ModuleBody;
.source "srfi34.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    }
.end annotation


# static fields
.field public static final $Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

.field public static final $Prvt$guard$Mnaux:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/srfi34;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final guard:Lkawa/lang/Macro;

.field public static final raise:Lgnu/expr/ModuleMethod;

.field public static final with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .prologue
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "<raise-object-exception>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "ex"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "if"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "let"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "temp"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "=>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "else"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxRules;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v24, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v24

    const/4 v5, 0x0

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    const-string/jumbo v8, "guard-aux"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    sput-object v7, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v24, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v24

    const/4 v5, 0x1

    sget-object v6, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    move-object/from16 v24, v3

    move-object/from16 v3, v24

    move-object/from16 v4, v24

    const/4 v5, 0x2

    sget-object v6, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v4, v5

    const/4 v4, 0x7

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

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007L\u000c\u0002\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u000b\u0008\u0015\u0013"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

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

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001"

    const-string/jumbo v11, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0003"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v18, 0x43014

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x2

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u000c\u001f\r\' \u0008\u0008"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x5

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0001\u0003"

    const-string/jumbo v11, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0011\u0018$\t\u0003\t\u001b\u0008%#"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v18, 0x48014

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x4

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x3

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001"

    const-string/jumbo v11, "\u000b"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x4

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u000c\u0017\r\u001f\u0018\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0003"

    const-string/jumbo v11, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c\u0011\u0018\u000c\u0008\u0011\u0018\u001c\t\u0003\t\u0013\u0008\u001d\u001b"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x3

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x5

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x4

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0003"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    move-object/from16 v24, v4

    move-object/from16 v4, v24

    move-object/from16 v5, v24

    const/4 v6, 0x6

    new-instance v7, Lkawa/lang/SyntaxRule;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const-string/jumbo v11, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\'\r/(\u0008\u0008"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x6

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0001\u0001\u0003\u0001\u0003"

    const-string/jumbo v11, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0011\u0018\u0014\t\u0003\t#\u0008-+"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x6

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit5:Lkawa/lang/SyntaxRules;

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

    const-string/jumbo v8, "guard"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v24

    sput-object v7, Lgnu/kawa/slib/srfi34;->Lit2:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v11, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v10, "\u0001\u0000\u0000"

    const-string/jumbo v11, "\u0011\u0018\u0004!\u0011\u0018\u000c\u0012\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$)\u0008\t\u0003\u0018,\u0008\u0011\u00184\u0011\u0018<\n"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x0

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const-string/jumbo v17, "try-catch"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x1

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x2

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x3

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const-string/jumbo v17, "<java.lang.Throwable>"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x4

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x5

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v16, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v16

    move-object/from16 v16, v24

    move-object/from16 v17, v24

    const-string/jumbo v18, "instance?"

    invoke-direct/range {v17 .. v18}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v18, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v21, 0x1b016

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v20, 0x1b013    # 1.54999E-40f

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v19, 0x1b008

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    new-instance v17, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    const-string/jumbo v19, "field"

    invoke-direct/range {v18 .. v19}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgnu/mapping/SimpleSymbol;

    new-instance v18, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string/jumbo v20, "as"

    invoke-direct/range {v19 .. v20}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v20, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v22, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v23, 0x1c02c

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v22, 0x1c013

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v21, 0x1c00f

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    new-instance v19, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const-string/jumbo v21, "quote"

    invoke-direct/range {v20 .. v21}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/mapping/SimpleSymbol;

    new-instance v20, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const-string/jumbo v22, "value"

    invoke-direct/range {v21 .. v22}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/mapping/SimpleSymbol;

    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v22, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v23, 0x1c031

    invoke-static/range {v20 .. v23}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v20

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v22, 0x1c031

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    sget-object v20, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v21, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v22, 0x1c030

    invoke-static/range {v19 .. v22}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v19

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v21, 0x1c00f

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v20, 0x1c008

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    sget-object v18, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v19, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v20, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v21, 0x1d008

    invoke-static/range {v18 .. v21}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v18

    const-string/jumbo v19, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v20, 0x1c008

    invoke-static/range {v17 .. v20}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v17

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v19, 0x1b008

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v18, 0x1b004

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v18, 0x1b004

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x6

    sget-object v15, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v15, v13, v14

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const/4 v14, 0x7

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const-string/jumbo v17, "primitive-throw"

    invoke-direct/range {v16 .. v17}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v18, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v19, 0x1e022

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string/jumbo v17, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    const v18, 0x1e011

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v7, v5, v6

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "raise"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    const-string/jumbo v3, "with-exception-handler"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/kawa/slib/srfi34;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    invoke-direct {v2}, Lgnu/kawa/slib/srfi34;-><init>()V

    sput-object v1, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    const-class v1, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    sput-object v1, Lgnu/kawa/slib/srfi34;->$Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    sget-object v3, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/srfi34;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x2002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi34;->with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object/from16 v24, v1

    move-object/from16 v1, v24

    move-object/from16 v2, v24

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/srfi34;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi34;->raise:Lgnu/expr/ModuleMethod;

    .line 3
    sget-object v1, Lgnu/kawa/slib/srfi34;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/srfi34;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/srfi34;->guard:Lkawa/lang/Macro;

    sget-object v1, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/kawa/slib/srfi34;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v3, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    invoke-static {v1, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/srfi34;->$Prvt$guard$Mnaux:Lkawa/lang/Macro;

    sget-object v1, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

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

.method public static raise(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    new-instance v1, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lgnu/kawa/slib/raise$Mnobject$Mnexception;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "handler":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "thunk":Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/kawa/slib/raise$Mnobject$Mnexception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move-object v2, v4

    .line 15
    :goto_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "handler":Ljava/lang/Object;
    return-object v0

    .line 11
    .restart local v0    # "handler":Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 14
    .local v3, "ex":Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v5, v0

    move-object v6, v3

    iget-object v6, v6, Lgnu/kawa/slib/raise$Mnobject$Mnexception;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .end local v3    # "ex":Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 15
    .local v3, "ex":Ljava/lang/Throwable;
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 17
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/srfi34;->raise(Ljava/lang/Object;)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    :goto_0
    return-object v0

    .line 4294967295
    .line 17
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
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

    .line 11
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/slib/srfi34;->withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 4294967295
    .line 11
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

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 17
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

    :goto_0
    return v0

    .line 4294967295
    .line 17
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    goto :goto_0
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

    .line 11
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
    .line 11
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
    .line 1
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/srfi34;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 4
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
