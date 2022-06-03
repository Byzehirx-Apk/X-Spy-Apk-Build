.class public Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Display a real Navigation Menu in the Side Menu"
    iconName = "images/makeroidSideMenuLayout.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "circleimageview.aar",
        "circleimageview.jar",
        "glide.jar"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

.field private HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

.field private RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

.field private ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

.field private hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

.field private isCompanion:Z

.field private jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

.field private joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

.field private x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 12

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 42
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    .line 58
    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    .line 59
    move-object v3, v0

    const v4, -0x616162

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 60
    move-object v3, v0

    const v4, -0x17e19d

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    .line 61
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    .line 63
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    .line 65
    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [[I

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const v10, 0x10100a0

    aput v10, v8, v9

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const v10, 0x101009e

    aput v10, v8, v9

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [I

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const v10, -0x101009e

    aput v10, v8, v9

    aput-object v7, v5, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    .line 66
    move-object v3, v0

    const/4 v4, 0x3

    new-array v4, v4, [I

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    aput v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    aput v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    aput v7, v5, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    .line 70
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    .line 71
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 73
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    .line 77
    :cond_0
    move-object v3, v0

    new-instance v4, Lcom/google/android/material/navigation/NavigationView;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    .line 78
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout$1;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 88
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v4, Landroid/content/res/ColorStateList;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 89
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v4, Landroid/content/res/ColorStateList;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const-string/jumbo v5, "navigation_item"

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    .line 94
    move-object v3, v0

    new-instance v4, Landroid/widget/LinearLayout;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const-string/jumbo v9, "ThemeOverlay.AppCompat.Dark"

    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    .line 95
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, -0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v8, 0xb0

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v3

    move v2, v3

    .line 98
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    move v4, v2

    move v11, v4

    move v4, v11

    move v5, v11

    move v6, v2

    move v11, v6

    move v6, v11

    move v7, v11

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v6, 0x48

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v7, 0x48

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v3

    .line 103
    move-object v3, v0

    new-instance v4, Landroidx/appcompat/widget/AppCompatImageView;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    .line 104
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    move-object v3, v0

    new-instance v4, Lde/hdodenhof/circleimageview/CircleImageView;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 107
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    move-object v3, v0

    new-instance v4, Landroid/widget/TextView;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    .line 110
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 113
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 117
    move-object v3, v0

    new-instance v4, Landroid/widget/TextView;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    .line 118
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 120
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 124
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 125
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->invalidate()V

    .line 131
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->addHeaderView(Landroid/view/View;)V

    .line 132
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    .line 134
    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    .line 136
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->BackgroundColor(I)V

    .line 137
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->CircleHeaderPicture(Z)V

    .line 138
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->DisabledColor(I)V

    .line 139
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->EnabledColor(I)V

    .line 140
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderBackgroundImage(Ljava/lang/String;)V

    .line 141
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderPicture(Ljava/lang/String;)V

    .line 142
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderSubtitle(Ljava/lang/String;)V

    .line 143
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderTitle(Ljava/lang/String;)V

    .line 144
    move-object v3, v0

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->SelectedColor(I)V

    .line 145
    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an item to the Navigation Menu"
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    move v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v1

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    move-object v1, v6

    .line 269
    move-object v6, v2

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 271
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 272
    move-object v2, v7

    if-eqz v6, :cond_0

    .line 273
    move-object v6, v1

    move-object v7, v2

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 277
    .line 279
    :cond_0
    :goto_0
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    .line 280
    move-object v6, v1

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v6

    .line 281
    move-object v6, v1

    move v7, v4

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v6

    .line 283
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v6}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    .line 284
    return-void

    .line 275
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 276
    const-string/jumbo v6, "MakeroidSideMenuLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "Could not load Image - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the background color of the Sidemenu Layout"
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the Sidemenu Layout"
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    .line 330
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setBackgroundColor(I)V

    .line 331
    return-void
.end method

.method public CircleHeaderPicture(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets (or not) the header picture to use a circle shape"
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    .line 167
    move v2, v1

    if-eqz v2, :cond_1

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 170
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V

    .line 176
    :goto_1
    return-void

    .line 170
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 173
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 174
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatImageView;Z)V

    .line 176
    goto :goto_1

    .line 174
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

    goto :goto_2
.end method

.method public CircleHeaderPicture()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns if the Header Picture is using a circular shape"
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    move v0, v1

    return v0
.end method

.method public DisabledColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the disabled elements of the SideMenu"
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    move v0, v1

    return v0
.end method

.method public DisabledColor(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF9E9E9E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the disabled elements of the SideMenu"
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 242
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    aput v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    .line 243
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 245
    return-void
.end method

.method public EnabledColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the enabled elements of the SideMenu"
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    move v0, v1

    return v0
.end method

.method public EnabledColor(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the enabled elements of the SideMenu"
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    .line 228
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    aput v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    .line 229
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 230
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 231
    return-void
.end method

.method public HeaderBackgroundImage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the Header Background Picture"
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public HeaderBackgroundImage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Background Picture"
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    .line 188
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object v1, v2

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 191
    const-string/jumbo v2, "MakeroidSideMenuLayout"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 193
    goto :goto_0
.end method

.method public HeaderPicture()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the Header Picture of the Side Menu"
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public HeaderPicture(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Picture of the Side Menu"
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hOhK0kjjpreklHpzajOh4zpZ0hDhUAnmvbGmmElshoJmuxQNkJo9K2Sh2YQvTJN:Ljava/lang/String;

    .line 151
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Z

    if-eqz v2, :cond_1

    .line 152
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V

    .line 156
    :goto_1
    return-void

    .line 152
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 154
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    move-object v3, v1

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatImageView;Z)V

    .line 156
    goto :goto_1

    .line 154
    :cond_2
    move-object v3, v1

    goto :goto_2
.end method

.method public HeaderSubtitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the Header Subtitle"
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public HeaderSubtitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Subtitle"
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

    .line 216
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 217
    return-void

    .line 216
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public HeaderTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the Header Title"
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public HeaderTitle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Title"
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

    .line 204
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 205
    return-void

    .line 204
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public OnMenuItemClick(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the user clicks on an item of the Navigation Menu"
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnMenuItemClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 341
    return-void
.end method

.method public RemoveItem(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove an item from the Navigation Menu"
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 316
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    move v4, v2

    invoke-interface {v3, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 318
    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 319
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    move v4, v2

    invoke-interface {v3, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 321
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    .line 315
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method public SelectedColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the selected element of the SideMenu"
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    move v0, v1

    return v0
.end method

.method public SelectedColor(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFE81E63"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the selected element of the SideMenu"
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    .line 256
    move-object v2, v0

    const/4 v3, 0x3

    new-array v3, v3, [I

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:I

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    aput v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    .line 257
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 258
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 259
    return-void
.end method

.method public UpdateItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update an item of the Navigation Menu"
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    invoke-interface {v10}, Landroid/view/Menu;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 289
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    move v10, v6

    invoke-interface {v9, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    .line 291
    move-object v7, v10

    invoke-interface {v9}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    move-object v10, v1

    if-ne v9, v10, :cond_0

    .line 292
    move-object v9, v7

    move-object v10, v2

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    .line 293
    move-object v9, v3

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 294
    move-object v9, v7

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    .line 305
    :goto_1
    move-object v9, v7

    move v10, v4

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v9

    .line 306
    move-object v9, v7

    move v10, v5

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v9

    .line 308
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v9}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    .line 288
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 297
    :cond_1
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v9}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v9

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    .line 298
    move-object v8, v10

    if-eqz v9, :cond_2

    .line 299
    move-object v9, v7

    move-object v10, v8

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 303
    :cond_2
    goto :goto_1

    .line 301
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 302
    const-string/jumbo v9, "MakeroidSideMenuLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string/jumbo v12, "Could not load Image for update - "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    .line 311
    :cond_3
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    move-object v0, v1

    return-object v0
.end method
