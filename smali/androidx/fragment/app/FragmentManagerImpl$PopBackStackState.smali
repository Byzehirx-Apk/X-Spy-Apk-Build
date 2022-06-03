.class Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .locals 7

    .prologue
    .line 3839
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;
    move-object v1, p1

    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move v3, p3

    .local v3, "id":I
    move v4, p4

    .local v4, "flags":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 3840
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    .line 3841
    move-object v5, v0

    move v6, v3

    iput v6, v5, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mId:I

    .line 3842
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    .line 3843
    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3848
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;
    move-object v1, p1

    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/BackStackRecord;>;"
    move-object v2, p2

    .local v2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mId:I

    if-gez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 3851
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    move-object v3, v4

    .line 3852
    .local v3, "childManager":Landroidx/fragment/app/FragmentManager;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3855
    const/4 v4, 0x0

    move v0, v4

    .line 3858
    .end local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;
    .end local v3    # "childManager":Landroidx/fragment/app/FragmentManager;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    move-object v8, v0

    iget v8, v8, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mId:I

    move-object v9, v0

    iget v9, v9, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method
