.class Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
.super Ljava/lang/Object;
.source "SupportRequestManagerFragment.java"

# interfaces
.implements Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupportFragmentRequestManagerTreeNode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;->this$0:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V
    .locals 5

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    move-object v1, p1

    .local v1, "x0":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v2, p2

    .local v2, "x1":Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    return-void
.end method


# virtual methods
.method public getDescendants()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    move-object v5, v0

    iget-object v5, v5, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;->this$0:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v5

    move-object v1, v5

    .line 176
    .local v1, "descendantFragments":Ljava/util/Set;, "Ljava/util/Set<Lcom/bumptech/glide/manager/SupportRequestManagerFragment;>;"
    new-instance v5, Ljava/util/HashSet;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    move-object v2, v5

    .line 177
    .local v2, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/RequestManager;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v4, v5

    .line 178
    .local v4, "fragment":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 179
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 181
    :cond_0
    goto :goto_0

    .line 182
    .end local v4    # "fragment":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    return-object v0
.end method
