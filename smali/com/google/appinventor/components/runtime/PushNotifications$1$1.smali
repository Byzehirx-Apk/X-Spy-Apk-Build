.class final Lcom/google/appinventor/components/runtime/PushNotifications$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onesignal/OneSignal$GetTagsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PushNotifications$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PushNotifications$1;)V
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/PushNotifications$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tagsAvailable(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    .line 234
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PushNotifications$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$1;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PushNotifications$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    const-string/jumbo v7, "{}"

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/PushNotifications;->GotAvailableTags(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 235
    .line 247
    :goto_0
    return-void

    .line 238
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    .line 239
    const/4 v6, 0x0

    move v3, v6

    .line 240
    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object v4, v6

    .line 241
    :goto_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 242
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 243
    move-object v6, v4

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    aput-object v8, v6, v7

    .line 244
    goto :goto_1

    .line 246
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PushNotifications$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications$1;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PushNotifications$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PushNotifications;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/appinventor/components/runtime/PushNotifications;->GotAvailableTags(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 247
    goto :goto_0
.end method
