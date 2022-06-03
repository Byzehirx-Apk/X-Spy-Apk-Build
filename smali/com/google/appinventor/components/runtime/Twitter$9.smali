.class final Lcom/google/appinventor/components/runtime/Twitter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic NKl0wOol24QsTInLTCDxIHyqeqvhGzhrtbHVkm7sQvkPq9BLF5nrPQlR8efylAFa:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

.field private synthetic op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Twitter$9;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Twitter$9;->NKl0wOol24QsTInLTCDxIHyqeqvhGzhrtbHVkm7sQvkPq9BLF5nrPQlR8efylAFa:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 526
    move-object v0, p0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$9;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Ljava/lang/String;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    .line 528
    move-object v1, v4

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$9;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Ljava/lang/String;

    const-string/jumbo v4, "file://"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 531
    :cond_0
    new-instance v3, Ljava/io/File;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    .line 532
    move-object v1, v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    new-instance v3, Ltwitter4j/StatusUpdate;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Twitter$9;->NKl0wOol24QsTInLTCDxIHyqeqvhGzhrtbHVkm7sQvkPq9BLF5nrPQlR8efylAFa:Ljava/lang/String;

    invoke-direct {v4, v5}, Ltwitter4j/StatusUpdate;-><init>(Ljava/lang/String;)V

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    .line 534
    move-object v2, v4

    move-object v4, v1

    invoke-virtual {v3, v4}, Ltwitter4j/StatusUpdate;->setMedia(Ljava/io/File;)V

    .line 535
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ltwitter4j/Twitter;->updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;

    move-result-object v3

    .line 536
    .line 545
    :goto_0
    return-void

    .line 538
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    const-string/jumbo v5, "TweetWithImage"

    const/16 v6, 0x13b

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 541
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 542
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter$9;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    const-string/jumbo v5, "TweetWithImage"

    const/16 v6, 0x132

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    .line 543
    invoke-virtual {v11}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 542
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 545
    goto :goto_0
.end method
