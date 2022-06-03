.class final Lcom/google/appinventor/components/runtime/Twitter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->Authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic OwdMPkBe57XgAj0YzjiQROmM9oaAuHcFVDiJ8FBhJvH3sMzMunZOSbYX19xrqcxQ:Ljava/lang/String;

.field private synthetic YC2Jl8CNC1NtvQ6mkXWwpXmAyzVebS7J6hOmisewJcFd5k6RSRLPzCaCvbCB5vJD:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Twitter$1;->OwdMPkBe57XgAj0YzjiQROmM9oaAuHcFVDiJ8FBhJvH3sMzMunZOSbYX19xrqcxQ:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/Twitter$1;->YC2Jl8CNC1NtvQ6mkXWwpXmAyzVebS7J6hOmisewJcFd5k6RSRLPzCaCvbCB5vJD:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 301
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Twitter$1$1;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Twitter$1$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 308
    .line 339
    :goto_0
    return-void

    .line 313
    :cond_0
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter$1;->OwdMPkBe57XgAj0YzjiQROmM9oaAuHcFVDiJ8FBhJvH3sMzMunZOSbYX19xrqcxQ:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Twitter$1;->YC2Jl8CNC1NtvQ6mkXWwpXmAyzVebS7J6hOmisewJcFd5k6RSRLPzCaCvbCB5vJD:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v3

    const-string/jumbo v4, "appinventor://twitter"

    invoke-interface {v3, v4}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/auth/RequestToken;

    move-result-object v3

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    .line 315
    move-object v1, v4

    invoke-virtual {v3}, Ltwitter4j/auth/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 316
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/RequestToken;)Ltwitter4j/auth/RequestToken;

    move-result-object v3

    .line 318
    new-instance v3, Landroid/content/Intent;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const-string/jumbo v5, "android.intent.action.MAIN"

    move-object v6, v2

    .line 319
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    .line 320
    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    .line 321
    invoke-static {}, Lcom/google/appinventor/components/runtime/Twitter;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 322
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    .line 323
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)I

    move-result v5

    .line 322
    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 338
    goto :goto_0

    .line 324
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 325
    const-string/jumbo v3, "Twitter"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string/jumbo v6, "Got exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    invoke-virtual {v5}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 326
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    const-string/jumbo v5, "Authorize"

    const/16 v6, 0x12f

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

    .line 327
    invoke-virtual {v11}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 326
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 328
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Twitter;->DeAuthorize()V

    .line 338
    goto/16 :goto_0

    .line 331
    :catch_1
    move-exception v3

    const-string/jumbo v3, "Twitter"

    const-string/jumbo v4, "OAuthConsumer was already set: launch IsAuthorized()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 332
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/Twitter$1$2;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/Twitter$1$2;-><init>(Lcom/google/appinventor/components/runtime/Twitter$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 339
    goto/16 :goto_0
.end method
