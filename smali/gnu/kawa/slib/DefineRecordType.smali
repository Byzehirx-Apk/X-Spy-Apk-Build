.class public Lgnu/kawa/slib/DefineRecordType;
.super Lgnu/expr/ModuleBody;
.source "DefineRecordType.scm"


# static fields
.field public static final $Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/DefineRecordType;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final define$Mnrecord$Mntype:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .prologue
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "tmp"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "slot-set!"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "begin"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "value"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "quote"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "slot-ref"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "::"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "obj"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    const-string/jumbo v2, "define"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v7, "%define-record-field"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v18

    sput-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v5, v3, v4

    const/4 v3, 0x2

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

    const-string/jumbo v10, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x3

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0001\u0001\u0001"

    const-string/jumbo v10, "\u0011\u0018\u0004Y\t\u0013\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003\u0008\u0011\u0018\u001c\u0011\u0018\u000c\u0008\u0011\u0018$\u0008\u000b"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x3

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x4

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x0

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

    const-string/jumbo v10, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x4

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0001\u0001\u0001\u0001"

    const-string/jumbo v10, "\u0011\u0018\u0004\u00e1\u0011\u0018\u000cY\t\u0013\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u0008\u0011\u0018$\u0011\u0018\u0014\u0008\u0011\u0018,\u0008\u000b\u0008\u0011\u0018\u000ci\t\u001bA\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0003\u00184\u0011\u0018\u001c\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018\u0014)\u0011\u0018,\u0008\u000b\u0018L"

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x3

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x4

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x5

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x6

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm"

    const v17, 0x33028

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x7

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "<void>"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0x8

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0x9

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm"

    const v17, 0x3401d

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit3:Lkawa/lang/SyntaxRules;

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

    const-string/jumbo v7, "define-record-type"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v5

    move-object/from16 v5, v18

    move-object/from16 v6, v18

    sput-object v6, Lgnu/kawa/slib/DefineRecordType;->Lit0:Lgnu/mapping/SimpleSymbol;

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

    const-string/jumbo v10, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u001f-\u000c\'\u000c/3 \u0018\u0008"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x7

    invoke-direct {v9, v10, v11, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string/jumbo v9, "\u0001\u0001\u0003\u0001\u0003\u0003\u0002"

    const-string/jumbo v10, "\u0011\u0018\u0004Y\u0011\u0018\u000c\t\u0003\t\u0010\u0008%\u0008#\u00b9\u0011\u0018\u0014!\t\u001b\u0018\u001c\u0011\u0018$\u0011\u0018,\u0008\u0011\u00184\u0011\u0018<\u0008\u0003\u01c1\u0011\u0018\u0014)\t\u000b\u0008\u0015\u0013\u0011\u0018$\t\u0003\u0008\u0011\u0018Dy\u0008\u0011\u0018L\u0011\u0018$\t\u0003\u0008\u0011\u0018T\u0008\u0003\u0099\u0011\u0018\u0004\u0008\u0015\u0011\u0018\\\u0011\u0018L)\u0011\u0018d\u0008\u0013\u0008\u0013\u0018l\u0008%\u0011\u0018t\t\u0003\t#\t+2"

    const/16 v11, 0xf

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x0

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x1

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "define-simple-class"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x2

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x3

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm"

    const v17, 0x1e01b

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x4

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x5

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "<boolean>"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x6

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "instance?"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/4 v13, 0x7

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0x8

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "let"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0x9

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0xa

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "make"

    invoke-direct/range {v15 .. v16}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0xb

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0xc

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0xd

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit12:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string/jumbo v16, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/DefineRecordType.scm"

    const v17, 0x23005

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    const/16 v13, 0xe

    sget-object v14, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v13

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v4, v5

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/DefineRecordType;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-direct {v1}, Lgnu/kawa/slib/DefineRecordType;-><init>()V

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

    .line 19
    sget-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->define$Mnrecord$Mntype:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/DefineRecordType;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/DefineRecordType;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/DefineRecordType;->$Prvt$$Pcdefine$Mnrecord$Mnfield:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/DefineRecordType;->$instance:Lgnu/kawa/slib/DefineRecordType;

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
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/DefineRecordType;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
