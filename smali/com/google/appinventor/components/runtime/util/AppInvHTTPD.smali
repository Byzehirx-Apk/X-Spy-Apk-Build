.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "SourceFile"


# static fields
.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

.field private static roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

.field private secure:Z

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/io/File;


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 47
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 52
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/io/File;

    .line 53
    move-object v5, v0

    const-string/jumbo v6, "scheme"

    invoke-static {v6}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    .line 54
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 55
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 56
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 57
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 4

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Access-Control-Allow-Origin"

    const-string/jumbo v3, "*"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    move-object v1, v0

    const-string/jumbo v2, "Access-Control-Allow-Headers"

    const-string/jumbo v3, "origin, content-type"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    move-object v1, v0

    const-string/jumbo v2, "Access-Control-Allow-Methods"

    const-string/jumbo v3, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    move-object v1, v0

    const-string/jumbo v2, "Allow"

    const-string/jumbo v3, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 10

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lorg/json/JSONObject;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v3

    .line 484
    move-object v3, v2

    :try_start_0
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "BAD"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 485
    move-object v3, v2

    const-string/jumbo v4, "message"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 488
    .line 489
    :goto_0
    new-instance v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-string/jumbo v6, "200 OK"

    const-string/jumbo v7, "application/json"

    move-object v8, v2

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 486
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 487
    const-string/jumbo v3, "AppInvHTTPD"

    const-string/jumbo v4, "Unable to write basic JSON content"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 4

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 12

    .prologue
    .line 437
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    const-string/jumbo v8, "extensions"

    const-string/jumbo v9, "[]"

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 438
    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 439
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 440
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 441
    move-object v4, v6

    if-eqz v5, :cond_0

    .line 442
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    :cond_0
    move-object v5, v0

    const-string/jumbo v6, "Invalid JSON content at index "

    move v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    .line 454
    :goto_1
    return-object v0

    .line 448
    :cond_1
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    .line 452
    move-object v5, v0

    :try_start_2
    const-string/jumbo v6, "OK"

    move-object v2, v6

    move-object v1, v5

    .line 2474
    new-instance v5, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    const-string/jumbo v8, "200 OK"

    const-string/jumbo v9, "text/plain"

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    .line 452
    move-object v0, v5

    goto :goto_1

    .line 449
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 450
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 453
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 454
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    move-object v0, v5

    goto :goto_1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 420
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 421
    const v4, 0x8000

    new-array v4, v4, [B

    move-object v2, v4

    .line 424
    :goto_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    move v3, v5

    if-lez v4, :cond_0

    .line 425
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 428
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 429
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .line 433
    :goto_1
    return-void

    .line 431
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 433
    goto :goto_1
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 509
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

    .line 510
    const/4 v1, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    .line 511
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    const/4 v1, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    .line 519
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 23

    .prologue
    .line 69
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 76
    move-object v14, v1

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    if-eqz v14, :cond_0

    .line 77
    move-object v14, v7

    invoke-virtual {v14}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    .line 78
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 79
    move-object v8, v15

    const-string/jumbo v15, "127.0.0.1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 80
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "Debug: hostAddress = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " while in secure mode, closing connection."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 81
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    const-string/jumbo v21, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\"}"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 85
    move-object v2, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    move-object v14, v2

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    move-object v14, v2

    move-object v1, v14

    .line 414
    :goto_0
    return-object v1

    .line 93
    :cond_0
    move-object v14, v3

    const-string/jumbo v15, "OPTIONS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 97
    move-object v14, v4

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object v7, v14

    .line 98
    :goto_1
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 100
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 101
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "  HDR: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' = \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    .line 102
    invoke-virtual/range {v16 .. v17}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 101
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 105
    move-object v8, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object v14, v8

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    move-object v14, v8

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object v14, v8

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object v14, v8

    move-object v1, v14

    goto/16 :goto_0

    .line 113
    :cond_2
    move-object v14, v2

    const-string/jumbo v15, "/_newblocks"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1466
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object v3, v14

    .line 1467
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 1468
    move-object v2, v15

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object v15, v3

    if-eq v14, v15, :cond_3

    .line 1469
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 115
    :cond_3
    move-object v14, v5

    const-string/jumbo v15, "seq"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 116
    move-object v7, v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move v8, v14

    .line 117
    move-object v14, v5

    const-string/jumbo v15, "blockid"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .line 118
    move-object v14, v5

    const-string/jumbo v15, "code"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 119
    move-object v14, v5

    const-string/jumbo v15, "mac"

    const-string/jumbo v16, "no key provided"

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    .line 121
    move-object v14, v3

    move-object v6, v14

    .line 122
    sget-object v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

    if-eqz v14, :cond_8

    .line 124
    :try_start_0
    const-string/jumbo v14, "HmacSHA1"

    invoke-static {v14}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v14

    move-object v9, v14

    .line 125
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    sget-object v16, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

    const-string/jumbo v17, "RAW"

    invoke-direct/range {v15 .. v17}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v5, v14

    .line 126
    move-object v14, v9

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 127
    move-object v14, v9

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v14

    move-object v10, v14

    .line 128
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    shl-int/lit8 v16, v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v11, v14

    .line 129
    new-instance v14, Ljava/util/Formatter;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v12, v14

    .line 130
    move-object v14, v10

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v5, v15

    array-length v14, v14

    move v9, v14

    const/4 v14, 0x0

    move v10, v14

    :goto_2
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_4

    move-object v14, v5

    move v15, v10

    aget-byte v14, v14, v15

    move v13, v14

    .line 131
    move-object v14, v12

    const-string/jumbo v15, "%02x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move/from16 v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v14

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 132
    :cond_4
    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object v5, v14

    .line 139
    .line 140
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Incoming Mac = "

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 141
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Computed Mac = "

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 142
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Incoming seq = "

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 143
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "Computed seq = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v16, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 144
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "blockid = "

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 145
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 146
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Hmac does not match"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 147
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Invalid HMAC"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 149
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object v1, v14

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v14

    move-object v9, v14

    .line 134
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Error working with hmac"

    move-object/from16 v16, v9

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 135
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Exception working on HMAC"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 137
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "NOT"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object v1, v14

    goto/16 :goto_0

    .line 152
    :cond_5
    sget v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    move v15, v8

    if-eq v14, v15, :cond_6

    sget v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    move v15, v8

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    if-eq v14, v15, :cond_6

    .line 153
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Seq does not match"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 154
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Invalid Seq"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object v1, v14

    goto/16 :goto_0

    .line 161
    :cond_6
    sget v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    move v15, v8

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_7

    .line 162
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Seq Fixup Invoked"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 163
    :cond_7
    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    .line 172
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string/jumbo v16, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " (begin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " )))"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 175
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "To Eval: "

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 180
    move-object v14, v6

    :try_start_1
    const-string/jumbo v15, "#f"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 181
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Skipping evaluation of #f"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 185
    :goto_3
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v14

    .line 190
    .line 191
    :goto_4
    move-object v14, v9

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object v14, v9

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object v14, v9

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object v14, v9

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object v14, v9

    move-object v1, v14

    goto/16 :goto_0

    .line 165
    :cond_8
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "No HMAC Key"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 166
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "No HMAC Key"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 168
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object v1, v14

    goto/16 :goto_0

    .line 183
    :cond_9
    move-object v14, v1

    :try_start_2
    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    move-object v15, v3

    invoke-virtual {v14, v15}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    goto/16 :goto_3

    .line 186
    :catch_1
    move-exception v14

    move-object v5, v14

    .line 187
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "newblocks: Scheme Failure"

    move-object/from16 v16, v5

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 188
    move-object v14, v2

    const-string/jumbo v15, "BAD"

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v14

    goto/16 :goto_4

    .line 196
    :cond_a
    move-object v14, v2

    const-string/jumbo v15, "/_values"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 197
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 198
    move-object v7, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object v14, v7

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_0

    .line 203
    :cond_b
    move-object v14, v2

    const-string/jumbo v15, "/_getversion"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 206
    move-object v14, v1

    :try_start_3
    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 207
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object v15, v8

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    move-object v2, v14

    .line 209
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v15, 0x5

    if-lt v14, v15, :cond_e

    .line 210
    const-string/jumbo v14, "io.makeroid.companion"

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 217
    :goto_5
    move-object v14, v2

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v4, v14

    .line 218
    move-object v14, v3

    if-nez v14, :cond_c

    .line 219
    const-string/jumbo v14, "Not Known"

    move-object v3, v14

    .line 223
    :cond_c
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    const-string/jumbo v21, "{\"version\" : \""

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"fingerprint\" : \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"installer\" : \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"package\" : \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"fqcn\" : true }"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v14

    .line 230
    .line 231
    :goto_6
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    move-object v14, v7

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    move-object v14, v1

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    if-eqz v14, :cond_d

    .line 236
    const/4 v14, 0x1

    sput v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:I

    .line 237
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    new-instance v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v14

    .line 243
    :cond_d
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_0

    .line 212
    :cond_e
    :try_start_4
    const-string/jumbo v14, "Not Known"
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v14

    goto/16 :goto_5

    .line 228
    :catch_2
    move-exception v14

    invoke-virtual {v14}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 229
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"verison\" : \"Unknown\""

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v14

    goto :goto_6

    .line 244
    :cond_f
    move-object v14, v2

    const-string/jumbo v15, "/_update"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    move-object v14, v2

    const-string/jumbo v15, "/_install"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 245
    :cond_10
    move-object v14, v5

    const-string/jumbo v15, "url"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 246
    move-object v14, v5

    const-string/jumbo v15, "mac"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 248
    move-object v14, v7

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    sget-object v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

    if-eqz v14, :cond_13

    move-object v14, v8

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 250
    :try_start_5
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    sget-object v16, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

    const-string/jumbo v17, "RAW"

    invoke-direct/range {v15 .. v17}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v3, v14

    .line 251
    const-string/jumbo v14, "HmacSHA1"

    invoke-static {v14}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 252
    move-object v4, v15

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 253
    move-object v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v14

    move-object v5, v14

    .line 254
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    shl-int/lit8 v16, v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v14

    .line 255
    new-instance v14, Ljava/util/Formatter;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v9, v14

    .line 256
    move-object v14, v5

    array-length v14, v14

    move v10, v14

    const/4 v14, 0x0

    move v11, v14

    :goto_7
    move v14, v11

    move v15, v10

    if-ge v14, v15, :cond_11

    move-object v14, v5

    move v15, v11

    aget-byte v14, v14, v15

    move v12, v14

    .line 257
    move-object v14, v9

    const-string/jumbo v15, "%02x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move/from16 v19, v12

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v14

    .line 256
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 258
    :cond_11
    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v14

    move-object v2, v14

    .line 269
    .line 270
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Incoming Mac (update) = "

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 271
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Computed Mac (update) = "

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 272
    move-object v14, v8

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 273
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Hmac does not match"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 274
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Invalid HMAC (update)"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 276
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 277
    move-object v3, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    move-object v14, v3

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object v14, v3

    move-object v1, v14

    goto/16 :goto_0

    .line 259
    :catch_3
    move-exception v14

    move-object v3, v14

    .line 260
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Error verifying update"

    move-object/from16 v16, v3

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 261
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Exception working on HMAC for update"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 263
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Exception processing MAC\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 264
    move-object v4, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object v14, v4

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object v14, v4

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    move-object v14, v4

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move-object v14, v4

    move-object v1, v14

    goto/16 :goto_0

    .line 283
    :cond_12
    move-object v14, v1

    move-object v15, v7

    move-object v3, v15

    .line 1514
    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v3

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 284
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"OK\", \"message\" : \"Update Should Happen\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 285
    move-object v3, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object v14, v3

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object v14, v3

    move-object v1, v14

    goto/16 :goto_0

    .line 291
    :cond_13
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Missing Parameters\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 292
    move-object v3, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object v14, v3

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object v14, v3

    move-object v1, v14

    goto/16 :goto_0

    .line 298
    :cond_14
    move-object v14, v2

    const-string/jumbo v15, "/_package"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 300
    move-object v14, v5

    const-string/jumbo v15, "package"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 301
    move-object v8, v15

    if-nez v14, :cond_15

    .line 302
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "NOT OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object v1, v14

    goto/16 :goto_0

    .line 305
    :cond_15
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 306
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string/jumbo v16, "android.intent.action.VIEW"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    .line 307
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    move-object v3, v14

    .line 308
    move-object v14, v2

    move-object v15, v3

    const-string/jumbo v16, "application/vnd.android.package-archive"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 309
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 310
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 311
    move-object v7, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object v14, v7

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_0

    .line 316
    :cond_16
    move-object v14, v2

    const-string/jumbo v15, "/_extensions"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 317
    move-object v14, v1

    move-object v15, v5

    invoke-direct {v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 320
    :cond_17
    move-object v14, v3

    const-string/jumbo v15, "PUT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 321
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v7, v14

    .line 322
    move-object v14, v6

    const-string/jumbo v15, "content"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 323
    move-object v8, v15

    if-eqz v14, :cond_1d

    .line 324
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    .line 325
    move-object v14, v5

    const-string/jumbo v15, "filename"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 326
    move-object v3, v15

    if-eqz v14, :cond_19

    .line 327
    move-object v14, v3

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_18

    move-object v14, v3

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_18

    move-object v14, v3

    const-string/jumbo v15, "../"

    .line 328
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_19

    .line 329
    :cond_18
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, " Ignoring invalid filename: "

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 330
    const/4 v14, 0x0

    move-object v3, v14

    .line 333
    :cond_19
    move-object v14, v3

    if-eqz v14, :cond_1c

    .line 335
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 336
    move-object v4, v15

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 337
    move-object v5, v15

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1a

    .line 338
    move-object v14, v5

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 340
    :cond_1a
    move-object v14, v2

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 341
    move-object v14, v2

    move-object v15, v4

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V

    .line 342
    move-object v14, v2

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    .line 344
    .line 353
    :cond_1b
    :goto_8
    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 354
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "NOTOK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 355
    move-object v2, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object v14, v2

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object v14, v2

    move-object v1, v14

    goto/16 :goto_0

    .line 345
    :cond_1c
    move-object v14, v2

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    .line 346
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Received content without a file name!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 347
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v14

    .line 349
    goto :goto_8

    .line 350
    :cond_1d
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Received PUT without content."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 351
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v14

    goto :goto_8

    .line 361
    :cond_1e
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 362
    move-object v2, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    move-object v14, v2

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    move-object v14, v2

    move-object v1, v14

    goto/16 :goto_0

    .line 370
    :cond_1f
    move-object v14, v4

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object v7, v14

    .line 371
    :goto_9
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 373
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 374
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "  HDR: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' = \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    .line 375
    invoke-virtual/range {v16 .. v17}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 374
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 376
    goto :goto_9

    .line 377
    :cond_20
    move-object v14, v5

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object v7, v14

    .line 378
    :goto_a
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_21

    .line 380
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 381
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "  PRM: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' = \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    .line 382
    invoke-virtual/range {v16 .. v17}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 381
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 383
    goto :goto_a

    .line 384
    :cond_21
    move-object v14, v6

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 385
    move-object v7, v15

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_26

    .line 387
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 388
    move-object v14, v6

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .line 389
    move-object v14, v5

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 390
    move-object v3, v15

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_22

    move-object v14, v3

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_22

    move-object v14, v3

    const-string/jumbo v15, "../"

    .line 391
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_23

    .line 392
    :cond_22
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, " Ignoring invalid filename: "

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 393
    const/4 v14, 0x0

    move-object v3, v14

    .line 395
    :cond_23
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v14

    .line 396
    move-object v14, v3

    if-nez v14, :cond_25

    .line 397
    move-object v14, v4

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    .line 405
    :cond_24
    :goto_b
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, " UPLOADED: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' was at \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 406
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 407
    move-object v5, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move-object v14, v5

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    move-object v14, v5

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    move-object v14, v5

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    move-object v14, v5

    move-object v1, v14

    goto/16 :goto_0

    .line 399
    :cond_25
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    .line 400
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_24

    .line 401
    move-object v14, v4

    move-object v15, v5

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V

    .line 402
    move-object v14, v4

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    goto/16 :goto_b

    .line 414
    :cond_26
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/io/File;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0
.end method
