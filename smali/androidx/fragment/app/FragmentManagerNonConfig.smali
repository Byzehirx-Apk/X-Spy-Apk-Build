.class public Landroidx/fragment/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"


# instance fields
.field private final mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewModelStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/FragmentManagerNonConfig;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v1, p1

    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    move-object v2, p2

    .local v2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    move-object v3, p3

    .local v3, "viewModelStores":Ljava/util/List;, "Ljava/util/List<Landroidx/lifecycle/ViewModelStore;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    .line 44
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    .line 45
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/fragment/app/FragmentManagerNonConfig;->mViewModelStores:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method getChildNonConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerNonConfig;
    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerNonConfig;
    return-object v0
.end method

.method getViewModelStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerNonConfig;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerNonConfig;->mViewModelStores:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerNonConfig;
    return-object v0
.end method
