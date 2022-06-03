.class Landroidx/appcompat/app/AlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V
    .locals 5

    .prologue
    .line 1065
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AlertController$AlertParams;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Landroidx/appcompat/app/AlertController;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1068
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AlertController$AlertParams$3;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Landroidx/appcompat/app/AlertController;

    iget-object v7, v7, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    move v8, v3

    invoke-interface {v6, v7, v8}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1069
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-boolean v6, v6, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v6, :cond_0

    .line 1070
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Landroidx/appcompat/app/AlertController;

    iget-object v6, v6, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v6}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1072
    :cond_0
    return-void
.end method
