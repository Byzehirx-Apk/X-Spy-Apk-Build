.class Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 163
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v3

    if-nez v3, :cond_0

    .line 164
    const/4 v3, 0x0

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .line 172
    .end local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    :goto_0
    return-object v0

    .line 166
    .restart local v0    # "this":Lcom/bumptech/glide/disklrucache/DiskLruCache$1;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    .line 169
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/bumptech/glide/disklrucache/DiskLruCache;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$402(Lcom/bumptech/glide/disklrucache/DiskLruCache;I)I

    move-result v3

    .line 171
    :cond_1
    move-object v3, v1

    monitor-exit v3

    .line 172
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
