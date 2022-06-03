.class public Lgnu/kawa/xml/MakeCDATA;
.super Lgnu/mapping/MethodProc;
.source "MakeCDATA.java"


# static fields
.field public static final makeCDATA:Lgnu/kawa/xml/MakeCDATA;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/xml/MakeCDATA;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xml/MakeCDATA;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeCDATA;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 15

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/MakeCDATA;
    move-object/from16 v1, p1

    .local v1, "ctx":Lgnu/mapping/CallContext;
    move-object v9, v1

    iget-object v9, v9, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v9

    .line 17
    .local v2, "saved":Lgnu/lists/Consumer;
    move-object v9, v1

    invoke-static {v9}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v9

    move-object v3, v9

    .line 20
    .local v3, "out":Lgnu/lists/XConsumer;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v9

    .line 21
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    sget-object v9, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    move-object v5, v9

    .line 24
    .local v5, "endMarker":Ljava/lang/String;
    :goto_0
    move-object v9, v1

    move-object v10, v5

    invoke-virtual {v9, v10}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    .line 25
    .local v6, "arg":Ljava/lang/Object;
    move-object v9, v6

    move-object v10, v5

    if-ne v9, v10, :cond_0

    .line 26
    .line 29
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    move v6, v9

    .line 30
    .local v6, "n":I
    move v9, v6

    new-array v9, v9, [C

    move-object v7, v9

    .line 31
    .local v7, "chars":[C
    move-object v9, v4

    const/4 v10, 0x0

    move v11, v6

    move-object v12, v7

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 32
    move-object v9, v3

    move-object v10, v7

    const/4 v11, 0x0

    move v12, v6

    invoke-interface {v9, v10, v11, v12}, Lgnu/lists/XConsumer;->writeCDATA([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    move-object v9, v2

    move-object v10, v1

    invoke-static {v9, v10}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 37
    .line 38
    return-void

    .line 27
    .end local v7    # "chars":[C
    .local v6, "arg":Ljava/lang/Object;
    :cond_0
    move-object v9, v6

    move-object v10, v4

    :try_start_1
    invoke-static {v9, v10}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 36
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local v5    # "endMarker":Ljava/lang/String;
    .end local v6    # "arg":Ljava/lang/Object;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    move-object v10, v1

    invoke-static {v9, v10}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    move-object v9, v8

    throw v9
.end method
