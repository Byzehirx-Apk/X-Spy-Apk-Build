.class public final Lcom/google/appinventor/components/runtime/KodularBottomNavigation;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that create a Bottom Navigation Menu in the app"
    iconName = "images/bottomNavigation.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

.field private JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

.field private backgroundColor:I

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

.field private joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 11

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 34
    move-object v2, v0

    const-string/jumbo v3, "&HFF6E6E6E"

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    .line 35
    move-object v2, v0

    const-string/jumbo v3, "&HFF3F51B5"

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    .line 37
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [[I

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const v9, 0x10100a0

    aput v9, v7, v8

    aput-object v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const v9, 0x101009e

    aput v9, v7, v8

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    .line 38
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    aput v6, v4, v5

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    aput v6, v4, v5

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    .line 43
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 44
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->context:Landroid/content/Context;

    .line 46
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 48
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 50
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularBottomNavigation$1;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation$1;-><init>(Lcom/google/appinventor/components/runtime/KodularBottomNavigation;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 59
    move-object v2, v0

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->Width(I)V

    .line 60
    move-object v2, v0

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->Height(I)V

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->BackgroundColor(I)V

    .line 62
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT()V

    .line 63
    return-void
.end method

.method private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT()V
    .locals 7

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    aput v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    aput v5, v3, v4

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    .line 156
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v2, Landroid/content/res/ColorStateList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 157
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v2, Landroid/content/res/ColorStateList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 158
    return-void
.end method


# virtual methods
.method public final AddItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an item to the bottom menu"
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 109
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 113
    .line 114
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public final BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the background color of the Bottom Navigation Menu."
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the Bottom Navigation Menu"
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->backgroundColor:I

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setBackgroundColor(I)V

    .line 72
    return-void

    .line 71
    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method public final Height()I
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Height(I)V
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 170
    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final ItemSelected(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when an item was selected."
    .end annotation

    .prologue
    .line 144
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "ItemSelected"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 145
    return-void
.end method

.method public final RemoveAllItems()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all items from the bottom menu"
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 133
    return-void
.end method

.method public final RemoveItem(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove an item from the bottom menu"
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 128
    return-void
.end method

.method public final SelectItem(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Select an item from the bottom menu"
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v2

    .line 138
    return-void
.end method

.method public final SelectedColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the color of the selected item of the Bottom Navigation Menu"
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    move v0, v1

    return v0
.end method

.method public final SelectedColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the color of the selected item of the Bottom Navigation Menu"
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:I

    .line 83
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT()V

    .line 84
    return-void
.end method

.method public final UnselectedColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the color of the unselected items of the Bottom Navigation Menu"
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    move v0, v1

    return v0
.end method

.method public final UnselectedColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6E6E6E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the color of the unselected items of the Bottom Navigation Menu"
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->JG8vik3adkKEwGQS5cMPy19gFsDVhfFFU9AjX5Lm2B7MWziHu9erYgT687JlCqd:I

    .line 95
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT()V

    .line 96
    return-void
.end method

.method public final UpdateItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update an item of the bottom menu"
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 122
    .line 123
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public final Width()I
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public final Width(I)V
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-object v3, v0

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 180
    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    move-object v0, v1

    return-object v0
.end method
