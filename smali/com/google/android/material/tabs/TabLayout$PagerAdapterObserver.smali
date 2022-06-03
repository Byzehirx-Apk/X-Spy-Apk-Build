.class Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 4

    .prologue
    .line 2846
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayout;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 2850
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    .line 2851
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 2855
    move-object v0, p0

    .local v0, "this":Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    .line 2856
    return-void
.end method
