.class public Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final S_END:I = 0x6

.field public static final S_INIT:I = 0x0

.field public static final S_IN_ARRAY:I = 0x3

.field public static final S_IN_ERROR:I = -0x1

.field public static final S_IN_FINISHED_VALUE:I = 0x1

.field public static final S_IN_OBJECT:I = 0x2

.field public static final S_IN_PAIR_VALUE:I = 0x5

.field public static final S_PASSED_PAIR_KEY:I = 0x4


# instance fields
.field private handlerStatusStack:Ljava/util/LinkedList;

.field private lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

.field private status:I

.field private token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    new-instance v2, Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    check-cast v4, Ljava/io/Reader;

    invoke-direct {v3, v4}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    .line 35
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    .line 36
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    return-void
.end method

.method private createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;
    .locals 6

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "containerFactory":Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 286
    new-instance v3, Lorg/jose4j/json/internal/json_simple/JSONArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;-><init>()V

    move-object v0, v3

    .line 291
    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :goto_0
    return-object v0

    .line 287
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 289
    .local v2, "l":Ljava/util/List;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 290
    new-instance v3, Lorg/jose4j/json/internal/json_simple/JSONArray;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/json/internal/json_simple/JSONArray;-><init>()V

    move-object v0, v3

    goto :goto_0

    .line 291
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;
    .locals 6

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "containerFactory":Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 276
    new-instance v3, Lorg/jose4j/json/internal/json_simple/JSONObject;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/json/internal/json_simple/JSONObject;-><init>()V

    move-object v0, v3

    .line 281
    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :goto_0
    return-object v0

    .line 277
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 279
    .local v2, "m":Ljava/util/Map;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 280
    new-instance v3, Lorg/jose4j/json/internal/json_simple/JSONObject;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/jose4j/json/internal/json_simple/JSONObject;-><init>()V

    move-object v0, v3

    goto :goto_0

    .line 281
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private nextToken()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    invoke-virtual {v2}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yylex()Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-result-object v2

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    .line 270
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    if-nez v1, :cond_0

    .line 271
    move-object v1, v0

    new-instance v2, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    .line 272
    :cond_0
    return-void
.end method

.method private peekStatus(Ljava/util/LinkedList;)I
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "statusStack":Ljava/util/LinkedList;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 40
    const/4 v3, -0x1

    move v0, v3

    .line 42
    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :goto_0
    return v0

    .line 41
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 42
    .local v2, "status":Ljava/lang/Integer;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, v0

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    invoke-virtual {v1}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->getPosition()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    return v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    check-cast v4, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    return-object v0
.end method

.method public parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object/from16 v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object/from16 v2, p2

    .local v2, "containerFactory":Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 113
    new-instance v9, Ljava/util/LinkedList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    move-object v3, v9

    .line 114
    .local v3, "statusStack":Ljava/util/LinkedList;
    new-instance v9, Ljava/util/LinkedList;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v9

    .line 118
    .local v4, "valueStack":Ljava/util/LinkedList;
    :cond_0
    move-object v9, v0

    :try_start_0
    invoke-direct {v9}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 119
    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    packed-switch v9, :pswitch_data_0

    .line 256
    :goto_0
    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 257
    new-instance v9, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v11

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v10, v11, v12, v13}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 262
    .local v5, "ie":Ljava/io/IOException;
    move-object v9, v5

    throw v9

    .line 121
    .end local v5    # "ie":Ljava/io/IOException;
    :pswitch_0
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v9, :pswitch_data_1

    .line 138
    :pswitch_1
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 140
    goto :goto_0

    .line 123
    :pswitch_2
    move-object v9, v0

    const/4 v10, 0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 124
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 125
    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 126
    goto :goto_0

    .line 128
    :pswitch_3
    move-object v9, v0

    const/4 v10, 0x2

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 129
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 130
    move-object v9, v4

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 131
    goto :goto_0

    .line 133
    :pswitch_4
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 134
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 135
    move-object v9, v4

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 136
    goto/16 :goto_0

    .line 143
    :pswitch_5
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 144
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    return-object v0

    .line 146
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :cond_1
    new-instance v9, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v11

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v10, v11, v12, v13}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v9

    .line 149
    :pswitch_6
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v9, :pswitch_data_2

    .line 174
    :pswitch_7
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 175
    goto/16 :goto_0

    .line 151
    :pswitch_8
    goto/16 :goto_0

    .line 153
    :pswitch_9
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 154
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .line 155
    .local v5, "key":Ljava/lang/String;
    move-object v9, v4

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 156
    move-object v9, v0

    const/4 v10, 0x4

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 157
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 158
    goto/16 :goto_0

    .line 160
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_a
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 165
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    .line 166
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    .line 167
    move-object v9, v0

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v10, v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v10

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 170
    :cond_3
    move-object v9, v0

    const/4 v10, 0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 172
    goto/16 :goto_0

    .line 180
    :pswitch_b
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v9, :pswitch_data_3

    .line 211
    :pswitch_c
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 213
    goto/16 :goto_0

    .line 182
    :pswitch_d
    goto/16 :goto_0

    .line 184
    :pswitch_e
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    .line 185
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .line 186
    .restart local v5    # "key":Ljava/lang/String;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object v6, v9

    .line 187
    .local v6, "parent":Ljava/util/Map;
    move-object v9, v6

    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v11, v11, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 188
    move-object v9, v0

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v10, v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v10

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 189
    goto/16 :goto_0

    .line 191
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "parent":Ljava/util/Map;
    :pswitch_f
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    .line 192
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .line 193
    .restart local v5    # "key":Ljava/lang/String;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object v6, v9

    .line 194
    .restart local v6    # "parent":Ljava/util/Map;
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v9

    move-object v7, v9

    .line 195
    .local v7, "newArray":Ljava/util/List;
    move-object v9, v6

    move-object v10, v5

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 196
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 197
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 198
    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 199
    goto/16 :goto_0

    .line 201
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "parent":Ljava/util/Map;
    .end local v7    # "newArray":Ljava/util/List;
    :pswitch_10
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    .line 202
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .line 203
    .restart local v5    # "key":Ljava/lang/String;
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    move-object v6, v9

    .line 204
    .restart local v6    # "parent":Ljava/util/Map;
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v9

    move-object v8, v9

    .line 205
    .local v8, "newObject":Ljava/util/Map;
    move-object v9, v6

    move-object v10, v5

    move-object v11, v8

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 206
    move-object v9, v0

    const/4 v10, 0x2

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 207
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 208
    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 209
    goto/16 :goto_0

    .line 216
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "parent":Ljava/util/Map;
    .end local v8    # "newObject":Ljava/util/Map;
    :pswitch_11
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v9, :pswitch_data_4

    .line 250
    :pswitch_12
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 252
    goto/16 :goto_0

    .line 218
    :pswitch_13
    goto/16 :goto_0

    .line 220
    :pswitch_14
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v5, v9

    .line 221
    .local v5, "val":Ljava/util/List;
    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 222
    goto/16 :goto_0

    .line 224
    .end local v5    # "val":Ljava/util/List;
    :pswitch_15
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 225
    move-object v9, v3

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    .line 226
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    .line 227
    move-object v9, v0

    move-object v10, v0

    move-object v11, v3

    invoke-direct {v10, v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v10

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 230
    :cond_4
    move-object v9, v0

    const/4 v10, 0x1

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 232
    goto/16 :goto_0

    .line 234
    :pswitch_16
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v5, v9

    .line 235
    .restart local v5    # "val":Ljava/util/List;
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v9

    move-object v6, v9

    .line 236
    .local v6, "newObject":Ljava/util/Map;
    move-object v9, v5

    move-object v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 237
    move-object v9, v0

    const/4 v10, 0x2

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 238
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 239
    move-object v9, v4

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 240
    goto/16 :goto_0

    .line 242
    .end local v5    # "val":Ljava/util/List;
    .end local v6    # "newObject":Ljava/util/Map;
    :pswitch_17
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v5, v9

    .line 243
    .restart local v5    # "val":Ljava/util/List;
    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v9

    move-object v7, v9

    .line 244
    .restart local v7    # "newArray":Ljava/util/List;
    move-object v9, v5

    move-object v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 245
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 246
    move-object v9, v3

    new-instance v10, Ljava/lang/Integer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget v12, v12, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 247
    move-object v9, v4

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 248
    goto/16 :goto_0

    .line 254
    .end local v5    # "val":Ljava/util/List;
    .end local v7    # "newArray":Ljava/util/List;
    :pswitch_18
    new-instance v9, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v11

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v10, v11, v12, v13}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v9

    .line 259
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 263
    .line 265
    new-instance v9, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v11

    const/4 v12, 0x1

    move-object v13, v0

    iget-object v13, v13, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v10, v11, v12, v13}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v9

    .line 119
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_18
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_11
        :pswitch_b
    .end packed-switch

    .line 121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 149
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 180
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 216
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_16
        :pswitch_12
        :pswitch_17
        :pswitch_15
        :pswitch_13
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    check-cast v4, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    invoke-virtual {v2, v3, v4}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    return-object v0
.end method

.method public parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "containerFactory":Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;
    new-instance v5, Ljava/io/StringReader;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 81
    .local v3, "in":Ljava/io/StringReader;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    return-object v0

    .line 83
    .restart local v0    # "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 87
    .local v4, "ie":Ljava/io/IOException;
    new-instance v5, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, 0x2

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v5
.end method

.method public parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "contentHandler":Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V

    .line 313
    return-void
.end method

.method public parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, p2

    .local v2, "contentHandler":Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;
    move v3, p3

    .local v3, "isResume":Z
    move v6, v3

    if-nez v6, :cond_3

    .line 331
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 332
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 342
    :cond_0
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    move-object v4, v6

    .line 346
    .local v4, "statusStack":Ljava/util/LinkedList;
    :cond_1
    move-object v6, v0

    :try_start_0
    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    packed-switch v6, :pswitch_data_0

    .line 508
    :cond_2
    :goto_1
    move-object v6, v0

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    .line 509
    new-instance v6, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v8

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v7, v8, v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 513
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 514
    .local v5, "ie":Ljava/io/IOException;
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 515
    move-object v6, v5

    throw v6

    .line 335
    .end local v4    # "statusStack":Ljava/util/LinkedList;
    .end local v5    # "ie":Ljava/io/IOException;
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    if-nez v6, :cond_0

    .line 336
    const/4 v6, 0x0

    move v3, v6

    .line 337
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 338
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    goto :goto_0

    .line 348
    .restart local v4    # "statusStack":Ljava/util/LinkedList;
    :pswitch_0
    move-object v6, v2

    :try_start_1
    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startJSON()V

    .line 349
    move-object v6, v0

    invoke-direct {v6}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 350
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_1

    .line 370
    :pswitch_1
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 372
    goto :goto_1

    .line 352
    :pswitch_2
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 353
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 354
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 355
    .line 503
    :goto_2
    return-void

    .line 358
    :pswitch_3
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 359
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 360
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    .line 361
    goto :goto_2

    .line 364
    :pswitch_4
    move-object v6, v0

    const/4 v7, 0x3

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 365
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 366
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    .line 367
    goto :goto_2

    .line 375
    :pswitch_5
    move-object v6, v0

    invoke-direct {v6}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 376
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 377
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endJSON()V

    .line 378
    move-object v6, v0

    const/4 v7, 0x6

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 379
    goto :goto_2

    .line 382
    :cond_4
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 383
    new-instance v6, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v8

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v7, v8, v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 517
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 518
    .local v5, "pe":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 519
    move-object v6, v5

    throw v6

    .line 387
    .end local v5    # "pe":Lorg/jose4j/json/internal/json_simple/parser/ParseException;
    :pswitch_6
    move-object v6, v0

    :try_start_2
    invoke-direct {v6}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 388
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_2

    .line 415
    :pswitch_7
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 416
    goto/16 :goto_1

    .line 390
    :pswitch_8
    goto/16 :goto_1

    .line 392
    :pswitch_9
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 393
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 394
    .local v5, "key":Ljava/lang/String;
    move-object v6, v0

    const/4 v7, 0x4

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 395
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 396
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 397
    goto/16 :goto_2

    .line 398
    :cond_5
    goto/16 :goto_1

    .line 400
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 402
    goto/16 :goto_1

    .line 404
    :pswitch_a
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    .line 405
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .line 406
    move-object v6, v0

    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v7

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 411
    :goto_3
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endObject()Z

    move-result v6

    if-nez v6, :cond_2

    .line 412
    goto/16 :goto_2

    .line 409
    :cond_7
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 521
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 522
    .local v5, "re":Ljava/lang/RuntimeException;
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 523
    move-object v6, v5

    throw v6

    .line 421
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :pswitch_b
    move-object v6, v0

    :try_start_3
    invoke-direct {v6}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 422
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_3

    .line 450
    :pswitch_c
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 452
    goto/16 :goto_1

    .line 424
    :pswitch_d
    goto/16 :goto_1

    .line 426
    :pswitch_e
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .line 427
    move-object v6, v0

    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v7

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 428
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 429
    goto/16 :goto_2

    .line 430
    :cond_8
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v6

    if-nez v6, :cond_2

    .line 431
    goto/16 :goto_2

    .line 434
    :pswitch_f
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .line 435
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 436
    move-object v6, v0

    const/4 v7, 0x3

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 437
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 438
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    .line 439
    goto/16 :goto_2

    .line 442
    :pswitch_10
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .line 443
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 444
    move-object v6, v0

    const/4 v7, 0x2

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 445
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 446
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    .line 447
    goto/16 :goto_2

    .line 459
    :pswitch_11
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .line 460
    move-object v6, v0

    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v7

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 461
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v6

    if-nez v6, :cond_2

    .line 462
    goto/16 :goto_2

    .line 466
    :pswitch_12
    move-object v6, v0

    invoke-direct {v6}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 467
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_4

    .line 498
    :pswitch_13
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 500
    goto/16 :goto_1

    .line 469
    :pswitch_14
    goto/16 :goto_1

    .line 471
    :pswitch_15
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v7, v7, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v6, v7}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 472
    goto/16 :goto_2

    .line 475
    :pswitch_16
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_9

    .line 476
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    .line 477
    move-object v6, v0

    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v7

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 482
    :goto_4
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endArray()Z

    move-result v6

    if-nez v6, :cond_2

    .line 483
    goto/16 :goto_2

    .line 480
    :cond_9
    move-object v6, v0

    const/4 v7, 0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 525
    :catch_3
    move-exception v6

    move-object v5, v6

    .line 526
    .local v5, "e":Ljava/lang/Error;
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 527
    move-object v6, v5

    throw v6

    .line 486
    .end local v5    # "e":Ljava/lang/Error;
    :pswitch_17
    move-object v6, v0

    const/4 v7, 0x2

    :try_start_4
    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 487
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 488
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    .line 489
    goto/16 :goto_2

    .line 492
    :pswitch_18
    move-object v6, v0

    const/4 v7, 0x3

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 493
    move-object v6, v4

    new-instance v7, Ljava/lang/Integer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget v9, v9, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 494
    move-object v6, v2

    invoke-interface {v6}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    .line 495
    goto/16 :goto_2

    .line 503
    :pswitch_19
    goto/16 :goto_2

    .line 506
    :pswitch_1a
    new-instance v6, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v8

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v7, v8, v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6

    .line 511
    :cond_a
    move-object v6, v0

    iget-object v6, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v6, v6, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 528
    .line 530
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 531
    new-instance v6, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-virtual {v8}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result v8

    const/4 v9, 0x1

    move-object v10, v0

    iget-object v10, v10, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {v7, v8, v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6

    .line 346
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_12
        :pswitch_b
        :pswitch_11
        :pswitch_19
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 388
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 422
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 467
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_17
        :pswitch_13
        :pswitch_18
        :pswitch_16
        :pswitch_14
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentHandler":Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V

    .line 296
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, p2

    .local v2, "contentHandler":Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;
    move v3, p3

    .local v3, "isResume":Z
    new-instance v6, Ljava/io/StringReader;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 301
    .local v4, "in":Ljava/io/StringReader;
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    move v9, v3

    :try_start_0
    invoke-virtual {v6, v7, v8, v9}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    return-void

    .line 303
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 307
    .local v5, "ie":Ljava/io/IOException;
    new-instance v6, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, -0x1

    const/4 v9, 0x2

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    .line 51
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 52
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 53
    return-void
.end method

.method public reset(Ljava/io/Reader;)V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
    move-object v1, p1

    .local v1, "in":Ljava/io/Reader;
    move-object v2, v0

    iget-object v2, v2, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yyreset(Ljava/io/Reader;)V

    .line 64
    move-object v2, v0

    invoke-virtual {v2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset()V

    .line 65
    return-void
.end method
