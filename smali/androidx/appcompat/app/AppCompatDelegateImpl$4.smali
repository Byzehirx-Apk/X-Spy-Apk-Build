.class Landroidx/appcompat/app/AppCompatDelegateImpl$4;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 4

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$4;
    move-object v1, p1

    .local v1, "this$0":Landroidx/appcompat/app/AppCompatDelegateImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl$4;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/AppCompatDelegateImpl$4;
    move-object v1, p1

    .local v1, "insets":Landroid/graphics/Rect;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/app/AppCompatDelegateImpl$4;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    move-object v4, v1

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateStatusGuard(I)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 664
    return-void
.end method
