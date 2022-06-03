.class public final Landroidx/appcompat/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mAnimations:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/ExpandedMenuView;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010129
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const v6, 0x1010074

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/ExpandedMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move v3, p3

    .local v3, "defStyleAttr":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroidx/appcompat/view/menu/ExpandedMenuView;->TINT_ATTRS:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v5

    move-object v4, v5

    .line 62
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    move-object v5, v0

    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/view/menu/ExpandedMenuView;->mAnimations:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    return v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    move-object v1, p1

    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/view/menu/ExpandedMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 74
    return-void
.end method

.method public invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    move-object v1, p1

    .local v1, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/view/menu/ExpandedMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    move-object v1, v0

    invoke-super {v1}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 81
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 82
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/view/menu/ExpandedMenuView;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;
    move-object v2, p2

    .local v2, "v":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    move v8, v3

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/ExpandedMenuView;->invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v6

    .line 93
    return-void
.end method
