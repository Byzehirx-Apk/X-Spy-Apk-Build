.class Landroidx/appcompat/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Landroidx/appcompat/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 4

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/NavItemSelectedListener;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/app/ActionBar$OnNavigationListener;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/app/NavItemSelectedListener;->mListener:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    .line 32
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
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/app/NavItemSelectedListener;
    move-object v1, p1

    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p2

    .local v2, "view":Landroid/view/View;
    move v3, p3

    .local v3, "position":I
    move-wide v4, p4

    .local v4, "id":J
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/NavItemSelectedListener;->mListener:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    if-eqz v6, :cond_0

    .line 37
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/app/NavItemSelectedListener;->mListener:Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    move v7, v3

    move-wide v8, v4

    invoke-interface {v6, v7, v8, v9}, Landroidx/appcompat/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    move-result v6

    .line 39
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
    .line 44
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
