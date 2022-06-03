.class public Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/spreadsheet.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# instance fields
.field private final EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:I

.field private final LOG_TAG:Ljava/lang/String;

.field private Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

.field private TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Ljava/lang/String;

.field protected activity:Landroid/app/Activity;

.field private final eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Ljava/lang/String;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

.field private final kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    move-object v2, v0

    const-string/jumbo v3, "GoogleSpreadsheet"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->LOG_TAG:Ljava/lang/String;

    .line 46
    move-object v2, v0

    const-string/jumbo v3, "?dev=true"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Ljava/lang/String;

    .line 48
    move-object v2, v0

    const/16 v3, 0x1388

    iput v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:I

    .line 49
    move-object v2, v0

    const/16 v3, 0xc8

    iput v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:I

    .line 52
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    .line 53
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    .line 54
    move-object v2, v0

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    .line 55
    move-object v2, v0

    const-string/jumbo v3, "Your Sheet Name"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Ljava/lang/String;

    .line 59
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->activity:Landroid/app/Activity;

    .line 60
    return-void

    .line 54
    :array_0
    .array-data 4
        0x1388
        0xc8
    .end array-data
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;)V
    .locals 15

    .prologue
    .line 44
    move-object v0, p0

    move-object v7, v0

    .line 1096
    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    .line 1098
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "?dev=true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    :goto_0
    move-object v1, v7

    .line 1100
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 1102
    :try_start_0
    new-instance v7, Ljava/net/URL;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 1103
    move-object v1, v8

    const-string/jumbo v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1104
    new-instance v7, Ljava/io/BufferedReader;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/io/InputStreamReader;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v7

    .line 1106
    :goto_1
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 1107
    move-object v4, v8

    if-eqz v7, :cond_1

    .line 1110
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1111
    goto :goto_1

    .line 1098
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?dev=true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v13, v7

    move-object v14, v8

    move-object v7, v14

    move-object v8, v13

    move-object v9, v14

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    goto :goto_0

    .line 1112
    :cond_1
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 1113
    move-object v7, v1

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_6

    .line 1114
    new-instance v7, Lorg/json/JSONObject;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    move-object v4, v7

    .line 1115
    const/4 v7, 0x0

    move v1, v7

    :goto_2
    move v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1116
    move-object v7, v4

    move v8, v1

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "{"

    const-string/jumbo v9, ""

    .line 1117
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "}"

    const-string/jumbo v9, ""

    .line 1118
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\""

    const-string/jumbo v9, ""

    .line 1119
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    .line 1120
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 1121
    move v7, v1

    if-nez v7, :cond_2

    .line 1122
    move-object v7, v0

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [I

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v3

    array-length v12, v12

    aput v12, v10, v11

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    .line 1124
    :cond_2
    const/4 v7, 0x0

    move v5, v7

    :goto_3
    move v7, v5

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 1125
    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1126
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    move v8, v1

    aget-object v7, v7, v8

    move v8, v5

    move-object v9, v6

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1127
    move v7, v1

    if-nez v7, :cond_3

    .line 1128
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    move-object v8, v6

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1124
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1115
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1132
    :cond_5
    move-object v7, v0

    const/4 v8, 0x1

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "GetData"

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->AfterAction(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1134
    .line 1140
    :goto_4
    return-void

    .line 1135
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 1136
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "GetData"

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->AfterAction(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1140
    goto :goto_4

    .line 1138
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1139
    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "GetData"

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->AfterAction(ZLjava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_4
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 1181
    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v0, v5

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    .line 1182
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "?dev=true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    :goto_0
    move-object v2, v3

    .line 1186
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    .line 1187
    move-object v2, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1188
    move-object v3, v2

    const-string/jumbo v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1189
    move-object v3, v2

    const-string/jumbo v4, "Content-Type"

    const-string/jumbo v5, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    move-object v3, v2

    const-string/jumbo v4, "Content-Length"

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1192
    move-object v3, v2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1193
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v1

    const-string/jumbo v6, "StoreData"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->AfterAction(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_1
    return-void

    .line 1182
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?dev=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    goto/16 :goto_0

    .line 1194
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1195
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "StoreData"

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->AfterAction(ZLjava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_1
.end method


# virtual methods
.method public AfterAction(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after an actions such as storing data has occurred. "
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$3;-><init>(Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public ApiEndpoint()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Retrieves the Cloudstich API endpoint."
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public ApiEndpoint(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Enter the Cloudstitch API Endpoint"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The Cloudstitch API endpoint."
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->Qws8UL0KACxj4AFwEq11K2awfkG72XuPUTZHhPLrlGlIXoxeK9stYQCrIWmabWcL:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public GetCellData(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "For the given columnName and rowNumber, retrieves the spreadsheet cell data"
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    move-object v0, v3

    return-object v0
.end method

.method public GetColumnData(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves all data for an entire column"
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    .line 154
    :goto_0
    return-object v0

    .line 149
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/Map;

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v1, v4

    .line 150
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v2, v4

    .line 151
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 152
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    move v7, v3

    aget-object v6, v6, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    :cond_1
    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public GetRowData(I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves data for a specific row number"
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[Ljava/lang/String;

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetSpreadsheetData()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "For the given ApiEndpoint and Spreadsheet, retrieves all data from the spreadsheet."
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$1;-><init>(Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public SheetName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Retrieves the Spreadsheet name"
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public SheetName(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Enter Spreadsheet name"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The Google spreadsheet name"
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public StoreData(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stores data into spreadsheet. dataToStore must be in json format. Will trigger AfterAction"
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/GoogleSpreadsheet$2;-><init>(Lcom/google/appinventor/components/runtime/GoogleSpreadsheet;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method
