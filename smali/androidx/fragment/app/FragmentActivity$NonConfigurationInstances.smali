.class final Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
.super Ljava/lang/Object;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonConfigurationInstances"
.end annotation


# instance fields
.field custom:Ljava/lang/Object;

.field fragments:Landroidx/fragment/app/FragmentManagerNonConfig;

.field viewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/FragmentActivity$NonConfigurationInstances;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method