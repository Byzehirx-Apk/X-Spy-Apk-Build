.class Landroidx/appcompat/widget/ActivityChooserView$1;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserView;)V
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$1;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ActivityChooserView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ActivityChooserView$1;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$1;
    move-object v1, v0

    invoke-super {v1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 139
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$1;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ActivityChooserView$1;
    move-object v1, v0

    invoke-super {v1}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 144
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView$1;->this$0:Landroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Landroidx/appcompat/widget/ActivityChooserView;->mAdapter:Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetInvalidated()V

    .line 145
    return-void
.end method
