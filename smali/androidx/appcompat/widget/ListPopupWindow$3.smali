.class Landroidx/appcompat/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 4

    .prologue
    .line 1166
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$3;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/widget/ListPopupWindow;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/ListPopupWindow$3;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 1171
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/ListPopupWindow$3;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1172
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow$3;->this$0:Landroidx/appcompat/widget/ListPopupWindow;

    iget-object v7, v7, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    move-object v6, v7

    .line 1174
    .local v6, "dropDownList":Landroidx/appcompat/widget/DropDownListView;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1175
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 1178
    .end local v6    # "dropDownList":Landroidx/appcompat/widget/DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
