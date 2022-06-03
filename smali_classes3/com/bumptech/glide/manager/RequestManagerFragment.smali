.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerFragment$1;,
        Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lcom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    new-instance v2, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {v1, v2}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, p1

    .local v1, "lifecycle":Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Fragment;-><init>()V

    .line 31
    move-object v2, v0

    new-instance v3, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;Lcom/bumptech/glide/manager/RequestManagerFragment$1;)V

    iput-object v3, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 33
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 45
    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, p1

    .local v1, "child":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    return-void
.end method

.method private isDescendant(Landroid/app/Fragment;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, p1

    .local v1, "fragment":Landroid/app/Fragment;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    move-object v2, v3

    .line 109
    .local v2, "root":Landroid/app/Fragment;
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 110
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 111
    const/4 v3, 0x1

    move v0, v3

    .line 115
    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    :goto_1
    return v0

    .line 113
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 115
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, p1

    .local v1, "child":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 77
    return-void
.end method


# virtual methods
.method public getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v5, v0

    if-ne v4, v5, :cond_0

    .line 86
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    .line 99
    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    .local v1, "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/manager/RequestManagerFragment;>;"
    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 87
    .end local v1    # "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/manager/RequestManagerFragment;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_2

    .line 90
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 92
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v1, v4

    .line 94
    .restart local v1    # "descendants":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/bumptech/glide/manager/RequestManagerFragment;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-virtual {v4}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v3, v4

    .line 95
    .local v3, "fragment":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bumptech/glide/manager/RequestManagerFragment;->isDescendant(Landroid/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 98
    :cond_3
    goto :goto_1

    .line 99
    .end local v3    # "fragment":Lcom/bumptech/glide/manager/RequestManagerFragment;
    :cond_4
    move-object v4, v1

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    return-object v0
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    move-object v0, v1

    .end local v0    # "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 122
    move-object v3, v0

    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v4

    iput-object v4, v3, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 125
    move-object v3, v0

    iget-object v3, v3, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/bumptech/glide/manager/RequestManagerFragment;->addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 129
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "RMFragment"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    const-string/jumbo v3, "RMFragment"

    const-string/jumbo v4, "Unable to register fragment with root"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onDestroy()V

    .line 160
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 161
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onDetach()V

    .line 139
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eqz v1, :cond_0

    .line 140
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-object v2, v0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/manager/RequestManagerFragment;->removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    .line 141
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 143
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-eqz v1, :cond_0

    .line 177
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->onLowMemory()V

    .line 179
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onStart()V

    .line 148
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 149
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Fragment;->onStop()V

    .line 154
    move-object v1, v0

    iget-object v1, v1, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    .line 155
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move v1, p1

    .local v1, "level":I
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->onTrimMemory(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/bumptech/glide/manager/RequestManagerFragment;
    move-object v1, p1

    .local v1, "requestManager":Lcom/bumptech/glide/RequestManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 54
    return-void
.end method
