.class public Lcom/google/appinventor/components/runtime/Ocr;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/ocr.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Ocr$a;,
        Lcom/google/appinventor/components/runtime/Ocr$c;,
        Lcom/google/appinventor/components/runtime/Ocr$b;
    }
.end annotation


# instance fields
.field private D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

.field private PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

.field private havePermission:Z

.field private repl:Z

.field private sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

.field private sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 56
    move-object v2, v0

    const-string/jumbo v3, "helloworld"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 57
    move-object v2, v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    .line 58
    move-object v2, v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    .line 59
    move-object v2, v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

    .line 60
    move-object v2, v0

    const-string/jumbo v3, "eng"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    .line 61
    move-object v2, v0

    const-string/jumbo v3, "http://2.bp.blogspot.com/-3C9EzBNi9rA/UiS93S6uqoI/AAAAAAAAEjM/fATWa50u0BY/w1200-h630-p-k-nu/Hello+world+android+app.jpg"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->havePermission:Z

    .line 64
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->repl:Z

    .line 65
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    .line 69
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    .line 70
    const-string/jumbo v2, "Ocr"

    const-string/jumbo v3, "Ocr Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 72
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ocr;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 73
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->repl:Z

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ocr;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 379
    move-object v0, v3

    const/4 v3, 0x0

    move-object v4, v0

    const-string/jumbo v5, " </span>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 380
    move-object v0, v2

    .line 383
    :goto_0
    return-object v0

    .line 381
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 382
    const-string/jumbo v2, "Ocr"

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Ocr;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 3361
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v7, "Free OCR API <span class=\"status {{ data.status }}\"> "

    move-object v2, v7

    .line 3362
    const-string/jumbo v7, "PRO API (Endpoint #1, USA, East Coast)  <span class=\"status {{ data.status }}\"> "

    move-object v3, v7

    .line 3363
    const-string/jumbo v7, "PRO API (Endpoint #1, USA, West Coast)  <span class=\"status {{ data.status }}\"> "

    move-object v4, v7

    .line 3364
    const-string/jumbo v7, "PRO API (Endpoint #2, Europe)  <span class=\"status {{ data.status }}\"> "

    move-object v5, v7

    .line 3365
    const-string/jumbo v7, "PRO API (Endpoint #3, Asia)   <span class=\"status {{ data.status }}\"> "

    move-object v6, v7

    .line 3367
    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 3368
    move-object v7, v1

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 3369
    move-object v7, v1

    move-object v8, v4

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 3370
    move-object v7, v1

    move-object v8, v5

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 3371
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 3373
    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v1

    invoke-virtual/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/Ocr;->GotServerStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    .line 432
    new-instance v4, Ljava/net/URL;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 434
    move-object v1, v5

    const-string/jumbo v5, "GET"

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 436
    move-object v4, v1

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 437
    new-instance v4, Ljava/io/BufferedReader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/io/InputStreamReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 439
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v3, v5

    if-eqz v4, :cond_0

    .line 440
    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 442
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 443
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    .line 444
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 452
    :goto_1
    return-object v0

    .line 446
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    .line 447
    const-string/jumbo v4, "There is no internet connection. Please try again."
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_1

    .line 449
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 450
    const-string/jumbo v4, "Ocr"

    move-object v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 451
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 481
    move-object v0, p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v6

    .line 482
    const/4 v6, 0x1

    move v2, v6

    .line 484
    move-object v6, v0

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 485
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 486
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 487
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 489
    move v6, v2

    if-eqz v6, :cond_0

    .line 490
    const/4 v6, 0x0

    move v2, v6

    .line 494
    :goto_1
    move-object v6, v1

    move-object v7, v4

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 495
    move-object v6, v1

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 496
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 498
    goto :goto_0

    .line 492
    :cond_0
    move-object v6, v1

    const-string/jumbo v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 499
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    .line 501
    :goto_2
    return-object v0

    :catch_0
    move-exception v6

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    .line 2418
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2419
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    move-object v4, v1

    const-string/jumbo v5, "SearchablePDFURL"

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    .line 2422
    :goto_0
    return-void

    .line 2421
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Ocr;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

    if-eqz v2, :cond_1

    .line 2422
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    move-object v4, v1

    const-string/jumbo v5, "ParsedText"

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    goto :goto_0

    .line 2424
    :cond_1
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    .line 52
    goto :goto_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;)Z
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->havePermission:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;Z)Z
    .locals 7

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/Ocr;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Z

    move v0, v2

    return v0
.end method

.method private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    const/4 v3, -0x1

    move v2, v3

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 404
    const/4 v3, 0x0

    move-object v1, v3

    .line 407
    :goto_1
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 408
    move-object v3, v1

    move-object v0, v3

    .line 413
    :goto_2
    return-object v0

    .line 390
    :sswitch_0
    move-object v3, v1

    const-string/jumbo v4, "ParsedText"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    :sswitch_1
    move-object v3, v1

    const-string/jumbo v4, "SearchablePDFURL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    goto :goto_0

    .line 392
    :pswitch_0
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v4, "ParsedResults"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 394
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 395
    const-string/jumbo v4, "ParsedText"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 396
    goto :goto_1

    .line 399
    :pswitch_1
    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v4, "SearchablePDFURL"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 401
    goto :goto_1

    .line 410
    :cond_1
    move-object v3, v0

    move-object v0, v3

    goto :goto_2

    .line 412
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_2

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x3c9660fe -> :sswitch_0
        0x68176cdf -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the api key."
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "helloworld"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "You can use the default api key: helloworld, or you can create your own api key at: https://ocr.space/ocrapi"
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public CreateSearchablePdf(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A searchable PDF file is a PDF file that includes text that can be searched upon using the standard Adobe Reader \u201csearch\u201d functionality. In addition, the text can be selected and copied from the PDF. In this case the JSON response of the API contains a download link for the the searchable PDF. This download link is valid for one hour, than all data is removed from the OCR servers."
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    .line 317
    return-void
.end method

.method public CreateSearchablePdf()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the state of create searchable Pdf property."
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetOcrServerStatus()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the server status from the free ocr.space server. This is helpful if you want to know if the server is online or offline. Returns true when online, else false when offline."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/Ocr$a;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Ocr$a;-><init>(Lcom/google/appinventor/components/runtime/Ocr;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string/jumbo v5, "https://status.ocr.space"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Ocr$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 346
    return-void
.end method

.method public GetTextFromImageUrl(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the text from a picture via the image url. Example: http://name/yourimage.jpg. Service powered by ocr.space."
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "https://api.ocr.space/parse/imageurl?apikey="

    move-object v2, v3

    .line 83
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ocr;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

    move-object v1, v3

    .line 88
    :cond_1
    move-object v3, v1

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, ".PNG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, ".jpg"

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, ".JPG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, ".gif"

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, ".GIF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, ".pdf"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, ".PDF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 92
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "The file must end with a valid extension like \'png\'/\'PNG\', \'jpg\'/\'JPG\', \'gif\'/\'GIF\', or \'pdf\'/\'PDF\'."

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ocr;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&isOverlayRequired="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&isCreateSearchablePdf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&language="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 95
    new-instance v3, Lcom/google/appinventor/components/runtime/Ocr$b;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Ocr$b;-><init>(Lcom/google/appinventor/components/runtime/Ocr;B)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Ocr$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 98
    goto :goto_0
.end method

.method public GotResponse(ZLjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "You will find here the success state and the response content."
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "GotResponse"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 223
    return-void
.end method

.method public GotServerStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "You will find here the server status from the ocr provider. Possible results are \'UP\' or \'DOWN\'. \'pro Usa1\' = Usa, East Coast. \'pro Usa2\' = Usa, West Coast. "
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    const-string/jumbo v7, "GotServerStatus"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    move-object v11, v4

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    move-object v11, v5

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    .line 230
    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the language code."
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Language(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "ocr_language"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Choose the language used for OCR. If no language is specified, English is taken as \'Default\'."
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 278
    move-object v2, v0

    const-string/jumbo v3, "eng"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    .line 280
    :goto_0
    return-void

    .line 252
    :pswitch_0
    move-object v2, v0

    const-string/jumbo v3, "eng"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 253
    :pswitch_1
    move-object v2, v0

    const-string/jumbo v3, "ara"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 254
    :pswitch_2
    move-object v2, v0

    const-string/jumbo v3, "bul"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 255
    :pswitch_3
    move-object v2, v0

    const-string/jumbo v3, "chs"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 256
    :pswitch_4
    move-object v2, v0

    const-string/jumbo v3, "cht"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 257
    :pswitch_5
    move-object v2, v0

    const-string/jumbo v3, "hrv"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 258
    :pswitch_6
    move-object v2, v0

    const-string/jumbo v3, "cze"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 259
    :pswitch_7
    move-object v2, v0

    const-string/jumbo v3, "dan"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 260
    :pswitch_8
    move-object v2, v0

    const-string/jumbo v3, "dut"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 261
    :pswitch_9
    move-object v2, v0

    const-string/jumbo v3, "eng"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 262
    :pswitch_a
    move-object v2, v0

    const-string/jumbo v3, "fin"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 263
    :pswitch_b
    move-object v2, v0

    const-string/jumbo v3, "fre"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 264
    :pswitch_c
    move-object v2, v0

    const-string/jumbo v3, "ger"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 265
    :pswitch_d
    move-object v2, v0

    const-string/jumbo v3, "gre"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 266
    :pswitch_e
    move-object v2, v0

    const-string/jumbo v3, "hun"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 267
    :pswitch_f
    move-object v2, v0

    const-string/jumbo v3, "kor"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 268
    :pswitch_10
    move-object v2, v0

    const-string/jumbo v3, "ita"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 269
    :pswitch_11
    move-object v2, v0

    const-string/jumbo v3, "jpn"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto :goto_0

    .line 270
    :pswitch_12
    move-object v2, v0

    const-string/jumbo v3, "nor"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 271
    :pswitch_13
    move-object v2, v0

    const-string/jumbo v3, "pol"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 272
    :pswitch_14
    move-object v2, v0

    const-string/jumbo v3, "por"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 273
    :pswitch_15
    move-object v2, v0

    const-string/jumbo v3, "rus"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 274
    :pswitch_16
    move-object v2, v0

    const-string/jumbo v3, "slv"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 275
    :pswitch_17
    move-object v2, v0

    const-string/jumbo v3, "spa"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 276
    :pswitch_18
    move-object v2, v0

    const-string/jumbo v3, "swe"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 277
    :pswitch_19
    move-object v2, v0

    const-string/jumbo v3, "tur"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public Overlayed(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to specify if the image/pdf text overlay is required. Overlay could be used to show the text over the image."
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    .line 239
    return-void
.end method

.method public Overlayed()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the state of overlayed property."
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public ReturnOnlyMessage(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set this block before you upload a image and before you try to get the response from a image url. If this property is set to true, the response content returns only the message. That means the response content will be only the scanned text in words."
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Z

    .line 339
    return-void
.end method

.method public ReturnOnlyPdfLink(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set this block before you upload a image and before you try to get the response from a image url. If this property is set to true, the response content returns only the created pdf download link."
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

    .line 330
    return-void
.end method

.method public TestImageUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "You can use the test image url if you have not any picture online on a server or else."
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Ocr;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public UploadImage(Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Upload your image to the server from ocr.space and then you get back the text from the picture."
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Ocr;->havePermission:Z

    if-nez v5, :cond_0

    .line 116
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Ocr;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v6, Lcom/google/appinventor/components/runtime/Ocr$1;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/google/appinventor/components/runtime/Ocr$1;-><init>(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 134
    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v5, Lcom/google/appinventor/components/runtime/Ocr$c;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/appinventor/components/runtime/Ocr$c;-><init>(Lcom/google/appinventor/components/runtime/Ocr;B)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v0

    move-object v10, v1

    move-object v2, v10

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    .line 1457
    move-object v1, v10

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    move-object v3, v9

    .line 1458
    move-object v9, v2

    move-object v4, v9

    .line 1459
    move-object v9, v2

    const-string/jumbo v10, "file:///"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1461
    move-object v9, v2

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1476
    :cond_1
    :goto_1
    move-object v9, v4

    .line 136
    aput-object v9, v7, v8

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Ocr$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v5

    .line 137
    goto :goto_0

    .line 1462
    :cond_2
    move-object v9, v2

    const-string/jumbo v10, "file:///"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v2

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1463
    move-object v9, v1

    iget-boolean v9, v9, Lcom/google/appinventor/components/runtime/Ocr;->repl:Z

    if-eqz v9, :cond_3

    .line 1464
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto :goto_1

    .line 1466
    :cond_3
    new-instance v9, Ljava/io/File;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v1

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "///"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto :goto_1

    .line 1469
    :cond_4
    move-object v9, v2

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1470
    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1471
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto/16 :goto_1

    .line 1474
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto/16 :goto_1
.end method
