.class public Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SupportRequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;,
        Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupportRMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lcom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {v1, v2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, p1

    .local v1, "lifecycle":Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 29
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment$SupportFragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;Lcom/bumptech/glide/manager/SupportRequestManagerFragment$1;)V

    iput-object v3, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 31
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 43
    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, p1

    .local v1, "child":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 75
    return-void
.end method

.method private isDescendant(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, p1

    .local v1, "fragment":Landroidx/fragment/app/Fragment;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v2, v3

    .line 108
    .local v2, "root":Landroidx/fragment/app/Fragment;
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 109
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 110
    const/4 v3, 0x1

    move v0, v3

    .line 114
    .end local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    :goto_1
    return v0

    .line 112
    .restart local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 114
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, p1

    .local v1, "child":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 79
    return-void
.end method


# virtual methods
.method public getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/SupportRequestManagerFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-nez v4, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    .line 99
    .end local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    .local v1, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/manager/SupportRequestManagerFragment;>;"
    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 88
    .end local v1    # "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/manager/SupportRequestManagerFragment;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v5, v0

    if-ne v4, v5, :cond_1

    .line 89
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 91
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v1, v4

    .line 94
    .restart local v1    # "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/manager/SupportRequestManagerFragment;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    invoke-virtual {v4}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v3, v4

    .line 95
    .local v3, "fragment":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->isDescendant(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 98
    :cond_2
    goto :goto_1

    .line 99
    .end local v3    # "fragment":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    :cond_3
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    return-object v0
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    move-object v3, v0

    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getSupportRequestManagerFragment(Landroidx/fragment/app/FragmentManager;)Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 123
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->addChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 128
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "SupportRMFragment"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string/jumbo v3, "SupportRMFragment"

    const-string/jumbo v4, "Unable to register fragment with root"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 160
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 138
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    if-eqz v1, :cond_0

    .line 139
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/SupportRequestManagerFragment;)V

    .line 140
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/SupportRequestManagerFragment;

    .line 142
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 167
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-eqz v1, :cond_0

    .line 168
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->onLowMemory()V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 147
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 153
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    .line 154
    return-void
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/SupportRequestManagerFragment;
    move-object v1, p1

    .local v1, "requestManager":Lcom/bumptech/glide/RequestManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/manager/SupportRequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 52
    return-void
.end method
