.class final Lcom/google/appinventor/components/runtime/Twitter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->SearchTwitter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic U9u1NCkfkIt8TxkUtLEkSnt4q17XcWqubKdv7fGgy1iQ9nUt5Ow6AbRkWhqP51Cs:Ljava/lang/String;

.field YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 919
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Twitter$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Twitter$5;->U9u1NCkfkIt8TxkUtLEkSnt4q17XcWqubKdv7fGgy1iQ9nUt5Ow6AbRkWhqP51Cs:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 920
    move-object v3, v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/Twitter$5;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    .line 924
    move-object v0, p0

    move-object v2, v0

    move-object v11, v2

    move-object v2, v11

    move-object v3, v11

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v3

    new-instance v4, Ltwitter4j/Query;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Twitter$5;->U9u1NCkfkIt8TxkUtLEkSnt4q17XcWqubKdv7fGgy1iQ9nUt5Ow6AbRkWhqP51Cs:Ljava/lang/String;

    invoke-direct {v5, v6}, Ltwitter4j/Query;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ltwitter4j/Twitter;->search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Twitter$5;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Ljava/util/List;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Twitter$5$1;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Twitter$5$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$5;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 938
    :goto_0
    return-void

    .line 925
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 926
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    const-string/jumbo v4, "SearchTwitter"

    const/16 v5, 0x13a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    .line 927
    invoke-virtual {v10}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 926
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Twitter$5$1;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Twitter$5$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$5;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 938
    goto :goto_0

    .line 929
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Twitter$5$1;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/Twitter$5$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$5;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 938
    move-object v2, v1

    throw v2
.end method
