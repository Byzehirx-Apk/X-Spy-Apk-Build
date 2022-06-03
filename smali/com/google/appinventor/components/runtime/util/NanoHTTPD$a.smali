.class final Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    .locals 8

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 344
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    .line 345
    const-string/jumbo v3, "AppInvHTTPD"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "NanoHTTPD: getPoolSize() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 346
    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 735
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v5

    .line 736
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 738
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v10, v5

    move v5, v10

    move v6, v10

    .line 739
    move v4, v6

    sparse-switch v5, :sswitch_data_0

    .line 749
    move-object v5, v2

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 736
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 742
    :sswitch_0
    move-object v5, v2

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 743
    goto :goto_1

    .line 745
    :sswitch_1
    move-object v5, v2

    move-object v6, v1

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v3

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 746
    add-int/lit8 v3, v3, 0x2

    .line 747
    goto :goto_1

    .line 753
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 758
    :goto_2
    return-object v0

    .line 757
    :catch_0
    move-exception v5

    move-object v5, v0

    const-string/jumbo v6, "400 Bad Request"

    const-string/jumbo v7, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_2

    .line 739
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BI)I
    .locals 4

    .prologue
    .line 719
    move-object v0, p0

    move v1, p1

    :goto_0
    move v2, v1

    move-object v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 721
    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    move-object v2, v0

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    move-object v2, v0

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    move-object v2, v0

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 719
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    :cond_1
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    return v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BII)Ljava/lang/String;
    .locals 12

    .prologue
    .line 694
    move-object v0, p0

    move v1, p1

    move v2, p2

    const-string/jumbo v6, ""

    move-object v3, v6

    .line 695
    move v6, v2

    if-lez v6, :cond_0

    .line 697
    const-string/jumbo v6, "java.io.tmpdir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 699
    :try_start_0
    const-string/jumbo v6, "NanoHTTPD"

    const-string/jumbo v7, ""

    new-instance v8, Ljava/io/File;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    move-object v4, v6

    .line 700
    new-instance v6, Ljava/io/FileOutputStream;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 701
    move-object v5, v7

    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 702
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 703
    move-object v6, v4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v3, v6

    .line 706
    .line 708
    :cond_0
    :goto_0
    move-object v6, v3

    move-object v0, v6

    return-object v0

    .line 704
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 705
    sget-object v6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 521
    move-object v5, v9

    if-nez v8, :cond_0

    .line 565
    :goto_0
    return-void

    .line 522
    :cond_0
    new-instance v8, Ljava/util/StringTokenizer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 523
    move-object v5, v9

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_1

    .line 524
    move-object v8, v0

    const-string/jumbo v9, "400 Bad Request"

    const-string/jumbo v10, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_1
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 527
    move-object v8, v2

    const-string/jumbo v9, "method"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 529
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_2

    .line 530
    move-object v8, v0

    const-string/jumbo v9, "400 Bad Request"

    const-string/jumbo v10, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 535
    move-object v6, v9

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v13, v8

    move v8, v13

    move v9, v13

    .line 536
    move v7, v9

    if-ltz v8, :cond_4

    .line 538
    move-object v8, v0

    move-object v9, v6

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Properties;)V

    .line 539
    move-object v8, v0

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 547
    :goto_1
    move-object v8, v5

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 549
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 550
    :goto_2
    move-object v8, v3

    if-eqz v8, :cond_5

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 552
    move-object v8, v3

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v13, v8

    move v8, v13

    move v9, v13

    .line 553
    move v5, v9

    if-ltz v8, :cond_3

    .line 554
    move-object v8, v4

    move-object v9, v3

    const/4 v10, 0x0

    move v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 555
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 556
    goto :goto_2

    .line 541
    :cond_4
    move-object v8, v0

    move-object v9, v6

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 559
    :cond_5
    move-object v8, v2

    const-string/jumbo v9, "uri"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 564
    goto/16 :goto_0

    .line 561
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 563
    move-object v8, v0

    const-string/jumbo v9, "500 Internal Server Error"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string/jumbo v12, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    goto/16 :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 14

    .prologue
    .line 803
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v1

    if-nez v8, :cond_0

    .line 804
    :try_start_0
    new-instance v8, Ljava/lang/Error;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "sendResponse(): Status can\'t be null."

    invoke-direct {v9, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    .line 850
    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 852
    :goto_0
    return-void

    .line 806
    :cond_0
    move-object v8, v0

    :try_start_2
    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    move-object v5, v8

    .line 807
    new-instance v8, Ljava/io/PrintWriter;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    invoke-direct {v9, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 808
    move-object v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "HTTP/1.0 "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " \r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    move-object v8, v2

    if-eqz v8, :cond_1

    .line 811
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "Content-Type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    :cond_1
    move-object v8, v3

    if-eqz v8, :cond_2

    move-object v8, v3

    const-string/jumbo v9, "Date"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 814
    :cond_2
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string/jumbo v11, "Date: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/text/SimpleDateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    :cond_3
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 818
    move-object v8, v3

    invoke-virtual {v8}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v8

    move-object v1, v8

    .line 819
    :goto_1
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 821
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v2, v8

    .line 822
    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 823
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    goto :goto_1

    .line 827
    :cond_4
    move-object v8, v6

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    move-object v8, v6

    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 830
    move-object v8, v4

    if-eqz v8, :cond_6

    .line 832
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v8

    move v1, v8

    .line 833
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()I

    move-result v8

    new-array v8, v8, [B

    move-object v2, v8

    .line 834
    :goto_2
    move v8, v1

    if-lez v8, :cond_6

    .line 836
    move-object v8, v4

    move-object v9, v2

    const/4 v10, 0x0

    move v11, v1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()I

    move-result v12

    if-le v11, v12, :cond_5

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou()I

    move-result v11

    :goto_3
    invoke-virtual {v8, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v13, v8

    move v8, v13

    move v9, v13

    .line 837
    move v7, v9

    if-lez v8, :cond_6

    .line 838
    move-object v8, v5

    move-object v9, v2

    const/4 v10, 0x0

    move v11, v7

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 839
    move v8, v1

    move v9, v7

    sub-int/2addr v8, v9

    move v1, v8

    .line 840
    goto :goto_2

    .line 836
    :cond_5
    move v11, v1

    goto :goto_3

    .line 842
    :cond_6
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 843
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 844
    move-object v8, v4

    if-eqz v8, :cond_7

    .line 845
    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 851
    :cond_7
    goto/16 :goto_0

    .line 852
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 772
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    .line 773
    .line 784
    :goto_0
    return-void

    .line 775
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    const-string/jumbo v8, "&"

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 776
    :goto_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 778
    move-object v5, v1

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 779
    move-object v3, v6

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v11, v5

    move v5, v11

    move v6, v11

    .line 780
    move v4, v6

    if-ltz v5, :cond_1

    .line 781
    move-object v5, v2

    move-object v6, v0

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 782
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 781
    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 783
    :cond_1
    goto :goto_1

    .line 784
    :cond_2
    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v14, v2

    move-object v15, v1

    :try_start_0
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    move-object v7, v15

    move-object v6, v14

    .line 1655
    const/4 v14, 0x0

    move v8, v14

    .line 1656
    const/4 v14, -0x1

    move v9, v14

    .line 1657
    new-instance v14, Ljava/util/Vector;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    move-object v10, v14

    .line 1658
    const/4 v14, 0x0

    move v11, v14

    :goto_0
    move v14, v11

    move-object v15, v6

    array-length v15, v15

    if-ge v14, v15, :cond_3

    .line 1660
    move-object v14, v6

    move v15, v11

    aget-byte v14, v14, v15

    move-object v15, v7

    move/from16 v16, v8

    aget-byte v15, v15, v16

    if-ne v14, v15, :cond_2

    .line 1662
    move v14, v8

    if-nez v14, :cond_0

    .line 1663
    move v14, v11

    move v9, v14

    .line 1664
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 1665
    move v14, v8

    move-object v15, v7

    array-length v15, v15

    if-ne v14, v15, :cond_1

    .line 1667
    move-object v14, v10

    move v15, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1668
    const/4 v14, 0x0

    move v8, v14

    .line 1669
    const/4 v14, -0x1

    move v9, v14

    .line 1658
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1674
    :cond_2
    move v14, v11

    move v15, v8

    sub-int/2addr v14, v15

    move v11, v14

    .line 1675
    const/4 v14, 0x0

    move v8, v14

    .line 1676
    const/4 v14, -0x1

    move v9, v14

    goto :goto_1

    .line 1679
    :cond_3
    move-object v14, v10

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v14

    new-array v14, v14, [I

    move-object v11, v14

    .line 1680
    const/4 v14, 0x0

    move v6, v14

    :goto_2
    move v14, v6

    move-object v15, v11

    array-length v15, v15

    if-ge v14, v15, :cond_4

    .line 1682
    move-object v14, v11

    move v15, v6

    move-object/from16 v16, v10

    move/from16 v17, v6

    invoke-virtual/range {v16 .. v17}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aput v16, v14, v15

    .line 1680
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1684
    :cond_4
    move-object v14, v11

    .line 576
    move-object v6, v14

    .line 577
    const/4 v14, 0x1

    move v7, v14

    .line 578
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 579
    :goto_3
    move-object v14, v8

    if-eqz v14, :cond_12

    .line 581
    move-object v14, v8

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    .line 582
    move-object v14, v0

    const-string/jumbo v15, "400 Bad Request"

    const-string/jumbo v16, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 584
    new-instance v14, Ljava/util/Properties;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    move-object v9, v14

    .line 585
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 586
    :goto_4
    move-object v14, v8

    if-eqz v14, :cond_7

    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 588
    move-object v14, v8

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    .line 589
    move v10, v15

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 590
    move-object v14, v9

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v8

    move/from16 v17, v10

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 591
    :cond_6
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 592
    goto :goto_4

    .line 593
    :cond_7
    move-object v14, v8

    if-eqz v14, :cond_11

    .line 595
    move-object v14, v9

    const-string/jumbo v15, "content-disposition"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    .line 596
    move-object v10, v15

    if-nez v14, :cond_8

    .line 598
    move-object v14, v0

    const-string/jumbo v15, "400 Bad Request"

    const-string/jumbo v16, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_8
    new-instance v14, Ljava/util/StringTokenizer;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v10

    const-string/jumbo v17, "; "

    invoke-direct/range {v15 .. v17}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v14

    .line 601
    new-instance v14, Ljava/util/Properties;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/util/Properties;-><init>()V

    move-object v11, v14

    .line 602
    :goto_5
    move-object v14, v10

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 604
    move-object v14, v10

    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    .line 605
    move-object v12, v15

    const/16 v15, 0x3d

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    .line 606
    move v13, v15

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9

    .line 607
    move-object v14, v11

    move-object v15, v12

    const/16 v16, 0x0

    move/from16 v17, v13

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    move/from16 v17, v13

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 608
    :cond_9
    goto :goto_5

    .line 609
    :cond_a
    move-object v14, v11

    const-string/jumbo v15, "name"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    .line 610
    move-object v12, v15

    const/4 v15, 0x1

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 612
    const-string/jumbo v14, ""

    move-object v13, v14

    .line 613
    move-object v14, v9

    const-string/jumbo v15, "content-type"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    .line 614
    :cond_b
    :goto_6
    move-object v14, v8

    if-eqz v14, :cond_10

    move-object v14, v8

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_10

    .line 616
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    .line 617
    move-object v8, v15

    if-eqz v14, :cond_b

    .line 619
    move-object v14, v8

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    .line 620
    move v9, v15

    const/4 v15, -0x1

    if-ne v14, v15, :cond_c

    .line 621
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    goto :goto_6

    .line 623
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v8

    const/16 v16, 0x0

    move/from16 v17, v9

    const/16 v18, 0x2

    add-int/lit8 v17, v17, -0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 624
    goto :goto_6

    .line 629
    :cond_d
    move v14, v7

    move-object v15, v6

    array-length v15, v15

    if-le v14, v15, :cond_e

    .line 630
    move-object v14, v0

    const-string/jumbo v15, "500 Internal Server Error"

    const-string/jumbo v16, "Error processing request"

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_e
    move-object v14, v2

    move-object v15, v6

    move/from16 v16, v7

    const/16 v17, 0x2

    add-int/lit8 v16, v16, -0x2

    aget v15, v15, v16

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BI)I

    move-result v14

    move v9, v14

    .line 632
    move-object v14, v2

    move v15, v9

    move-object/from16 v16, v6

    move/from16 v17, v7

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    aget v16, v16, v17

    move/from16 v17, v9

    sub-int v16, v16, v17

    const/16 v17, 0x4

    add-int/lit8 v16, v16, -0x4

    invoke-static/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BII)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 633
    move-object v14, v5

    move-object v15, v12

    move-object/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 634
    move-object v14, v11

    const-string/jumbo v15, "filename"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    .line 635
    move-object v13, v15

    const/4 v15, 0x1

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 637
    :cond_f
    move-object v14, v3

    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    .line 638
    move-object v8, v15

    if-eqz v14, :cond_10

    move-object v14, v8

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_f

    .line 640
    :cond_10
    move-object v14, v4

    move-object v15, v12

    move-object/from16 v16, v13

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 642
    :cond_11
    goto/16 :goto_3

    .line 647
    .line 648
    :cond_12
    :goto_7
    return-void

    .line 644
    :catch_0
    move-exception v14

    move-object v6, v14

    .line 646
    move-object v14, v0

    const-string/jumbo v15, "500 Internal Server Error"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v19, v16

    move-object/from16 v16, v19

    move-object/from16 v17, v19

    const-string/jumbo v18, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    goto :goto_7
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 792
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "text/plain"

    const/4 v6, 0x0

    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 793
    new-instance v3, Ljava/lang/InterruptedException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
.end method


# virtual methods
.method public final run()V
    .locals 26

    .prologue
    .line 353
    move-object/from16 v3, p0

    move-object/from16 v18, v3

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    .line 354
    move-object/from16 v4, v19

    if-nez v18, :cond_0

    .line 509
    :goto_0
    return-void

    .line 360
    :cond_0
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 361
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const/16 v20, 0x0

    const/16 v21, 0x2000

    invoke-virtual/range {v18 .. v21}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    move/from16 v25, v18

    move/from16 v18, v25

    move/from16 v19, v25

    .line 362
    move/from16 v6, v19

    if-gtz v18, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v5

    const/16 v21, 0x0

    move/from16 v22, v6

    invoke-direct/range {v19 .. v22}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v7, v18

    .line 366
    new-instance v18, Ljava/io/BufferedReader;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v7

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v7, v18

    .line 367
    new-instance v18, Ljava/util/Properties;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    move-object/from16 v8, v18

    .line 368
    new-instance v18, Ljava/util/Properties;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    move-object/from16 v9, v18

    .line 369
    new-instance v18, Ljava/util/Properties;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    move-object/from16 v10, v18

    .line 370
    new-instance v18, Ljava/util/Properties;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    move-object/from16 v11, v18

    .line 373
    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 374
    move-object/from16 v18, v8

    const-string/jumbo v19, "method"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 375
    move-object/from16 v18, v8

    const-string/jumbo v19, "uri"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, v18

    .line 377
    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v15, v18

    .line 378
    move-object/from16 v18, v10

    const-string/jumbo v19, "content-length"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v18

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    .line 379
    move-object/from16 v12, v19

    if-eqz v18, :cond_2

    .line 381
    move-object/from16 v18, v12

    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v15, v18

    .line 382
    .line 387
    :cond_2
    :goto_1
    const/16 v18, 0x0

    move/from16 v12, v18

    .line 388
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 389
    :goto_2
    move/from16 v18, v12

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 391
    move-object/from16 v18, v5

    move/from16 v19, v12

    :try_start_2
    aget-byte v18, v18, v19

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object/from16 v18, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    aget-byte v18, v18, v19

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object/from16 v18, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    aget-byte v18, v18, v19

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object/from16 v18, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v12

    aget-byte v18, v18, v19

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 392
    const/16 v18, 0x1

    move/from16 v13, v18

    .line 397
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 401
    move-object/from16 v18, v7

    const-string/jumbo v19, "PUT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 403
    const-string/jumbo v18, "upload"

    const-string/jumbo v19, "bin"

    invoke-static/range {v18 .. v19}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    .line 404
    move-object/from16 v17, v19

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->deleteOnExit()V

    .line 405
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v17

    invoke-direct/range {v19 .. v20}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v14, v18

    .line 406
    move-object/from16 v18, v11

    const-string/jumbo v19, "content"

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 407
    .line 412
    :goto_3
    move/from16 v18, v12

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    move-object/from16 v18, v14

    move-object/from16 v19, v5

    move/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v12

    sub-int v21, v21, v22

    invoke-virtual/range {v18 .. v21}, Ljava/io/OutputStream;->write([BII)V

    .line 420
    :cond_4
    move/from16 v18, v12

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 421
    move-wide/from16 v18, v15

    move/from16 v20, v6

    move/from16 v21, v12

    sub-int v20, v20, v21

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v15, v18

    .line 426
    :cond_5
    :goto_4
    const/16 v18, 0x200

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 427
    :cond_6
    :goto_5
    move/from16 v18, v6

    if-ltz v18, :cond_b

    move-wide/from16 v18, v15

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_b

    .line 429
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    const/16 v20, 0x0

    const/16 v21, 0x200

    invoke-virtual/range {v18 .. v21}, Ljava/io/InputStream;->read([BII)I

    move-result v18

    move/from16 v6, v18

    .line 430
    move-wide/from16 v18, v15

    move/from16 v20, v6

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v15, v18

    .line 431
    move/from16 v18, v6

    if-lez v18, :cond_6

    .line 432
    move-object/from16 v18, v14

    move-object/from16 v19, v5

    const/16 v20, 0x0

    move/from16 v21, v6

    invoke-virtual/range {v18 .. v21}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    :catch_0
    move-exception v18

    goto/16 :goto_1

    .line 395
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 410
    :cond_8
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v14, v18

    goto/16 :goto_3

    .line 422
    :cond_9
    move/from16 v18, v13

    if-eqz v18, :cond_a

    move-wide/from16 v18, v15

    const-wide v20, 0x7fffffffffffffffL

    cmp-long v18, v18, v20

    if-nez v18, :cond_5

    .line 423
    :cond_a
    const-wide/16 v18, 0x0

    move-wide/from16 v15, v18

    goto :goto_4

    .line 437
    :cond_b
    move-object/from16 v18, v7

    const-string/jumbo v19, "POST"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 440
    move-object/from16 v18, v14

    check-cast v18, Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v17, v18

    .line 443
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v17

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v5, v18

    .line 444
    new-instance v18, Ljava/io/BufferedReader;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v5, v18

    .line 446
    const-string/jumbo v18, ""

    move-object/from16 v6, v18

    .line 447
    move-object/from16 v18, v10

    const-string/jumbo v19, "content-type"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    .line 448
    new-instance v18, Ljava/util/StringTokenizer;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v12

    const-string/jumbo v21, "; "

    invoke-direct/range {v19 .. v21}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    .line 449
    move-object/from16 v12, v19

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 450
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 453
    :cond_c
    move-object/from16 v18, v6

    const-string/jumbo v19, "multipart/form-data"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 456
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-nez v18, :cond_d

    .line 457
    move-object/from16 v18, v3

    const-string/jumbo v19, "400 Bad Request"

    const-string/jumbo v20, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_d
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 459
    new-instance v18, Ljava/util/StringTokenizer;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    move-object/from16 v20, v6

    const-string/jumbo v21, "="

    invoke-direct/range {v19 .. v21}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    .line 460
    move-object/from16 v12, v19

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 461
    move-object/from16 v18, v3

    const-string/jumbo v19, "400 Bad Request"

    const-string/jumbo v20, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_e
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 463
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    .line 465
    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move-object/from16 v20, v17

    move-object/from16 v21, v5

    move-object/from16 v22, v9

    move-object/from16 v23, v11

    invoke-direct/range {v18 .. v23}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 466
    .line 481
    :goto_6
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V

    .line 482
    .line 489
    :cond_f
    :goto_7
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    move-object/from16 v22, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    move-object/from16 v24, v0

    invoke-virtual/range {v18 .. v24}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v18

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    .line 490
    move-object/from16 v17, v19

    if-nez v18, :cond_13

    .line 491
    move-object/from16 v18, v3

    const-string/jumbo v19, "500 Internal Server Error"

    const-string/jumbo v20, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_8
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 508
    goto/16 :goto_0

    .line 470
    :cond_10
    const-string/jumbo v18, ""

    move-object/from16 v6, v18

    .line 471
    const/16 v18, 0x200

    move/from16 v0, v18

    new-array v0, v0, [C

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 472
    move-object/from16 v18, v5

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Ljava/io/BufferedReader;->read([C)I

    move-result v18

    move/from16 v13, v18

    .line 473
    :goto_9
    move/from16 v18, v13

    if-ltz v18, :cond_11

    move-object/from16 v18, v6

    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 475
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v12

    const/16 v20, 0x0

    move/from16 v21, v13

    invoke-static/range {v19 .. v21}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 476
    move-object/from16 v18, v5

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Ljava/io/BufferedReader;->read([C)I

    move-result v18

    move/from16 v13, v18

    goto :goto_9

    .line 478
    :cond_11
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 479
    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 497
    :catch_1
    move-exception v18

    move-object/from16 v4, v18

    .line 501
    move-object/from16 v18, v3

    :try_start_3
    const-string/jumbo v19, "500 Internal Server Error"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    const-string/jumbo v22, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 503
    goto/16 :goto_0

    .line 483
    :cond_12
    move-object/from16 v18, v7

    :try_start_4
    const-string/jumbo v19, "PUT "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 485
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_7

    .line 509
    :catch_2
    move-exception v18

    goto/16 :goto_0

    .line 493
    :cond_13
    move-object/from16 v18, v3

    move-object/from16 v19, v17

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v20, v17

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    move-object/from16 v21, v0

    move-object/from16 v22, v17

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    move-object/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_8

    .line 508
    :catch_3
    move-exception v18

    goto/16 :goto_0
.end method
