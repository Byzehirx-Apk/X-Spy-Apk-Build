.class public Lcom/google/appinventor/components/runtime/GridView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/gridview.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GridView$MyAdapter;
    }
.end annotation


# instance fields
.field private ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

.field private M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:I

.field private TAG:Ljava/lang/String;

.field private TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Z

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

.field private iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:I

.field private imagePath:Ljava/lang/String;

.field private textColor:I

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/drawable/Drawable;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .prologue
    .line 70
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 53
    move-object v3, v1

    const/4 v4, 0x5

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

    .line 54
    move-object v3, v1

    const/4 v4, 0x4

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:I

    .line 55
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    .line 56
    move-object v3, v1

    const/16 v4, 0x96

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:I

    .line 57
    move-object v3, v1

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView;->imagePath:Ljava/lang/String;

    .line 60
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/GridView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Z

    .line 61
    move-object v3, v1

    const/high16 v4, -0x1000000

    iput v4, v3, Lcom/google/appinventor/components/runtime/GridView;->textColor:I

    .line 62
    move-object v3, v1

    const-string/jumbo v4, "GridView"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView;->TAG:Ljava/lang/String;

    .line 71
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView;->context:Landroid/content/Context;

    .line 73
    move-object v3, v1

    new-instance v4, Landroid/widget/GridView;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    .line 74
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/GridView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/drawable/Drawable;

    .line 76
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/GridView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Z

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GridView;->StretchEnabled(Z)V

    .line 80
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setGravity(I)V

    .line 82
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/google/appinventor/components/runtime/GridView;->iLHecwZEZ1qFKybU5FAR3aqOIDdUsGdPPaR0D5I2BkdnPzgzEMwtpOPW3wNOFXm:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GridView;->Columns(I)V

    .line 83
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GridView;->BackgroundColor(I)V

    .line 85
    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    .line 88
    move-object v3, v1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GridView;->FontSize(F)V

    .line 89
    move-object v3, v1

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GridView;->TextColor(I)V

    .line 90
    move-object v3, v1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/GridView;->ElementsFromString(Ljava/lang/String;)V

    .line 92
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 95
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->TAG:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public AfterPicking(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers after an item from this component has been selected"
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterPicking"

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

    .line 330
    return-void
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color. "
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color. "
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    .line 221
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 222
    return-void
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    .line 1240
    :goto_0
    return-void

    .line 209
    :cond_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GridView;->imagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GridView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 1233
    move-object v1, v3

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 1234
    move-object v2, v1

    iget v2, v2, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    if-nez v2, :cond_1

    .line 1236
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1239
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1240
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v3, v1

    iget v3, v3, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1244
    :cond_2
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 212
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/GridView;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 214
    goto :goto_0
.end method

.method public ClearGridView()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears the items from the component"
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->clear()V

    .line 111
    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GridView;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    .line 112
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setElements([Ljava/lang/String;)V

    .line 113
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    move-object v1, v0

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/GridView;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 115
    return-void
.end method

.method public Columns()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns number of columns for this component"
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public Columns(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets number of columns used for this component"
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 271
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->invalidate()V

    .line 272
    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the list of elements"
    .end annotation

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of elements to be used for GridView"
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 168
    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 173
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    .line 174
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setElements([Ljava/lang/String;)V

    .line 175
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->notifyDataSetChanged()V

    .line 176
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->invalidate()V

    .line 178
    goto :goto_0
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The elements specified as a string with the items separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 105
    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/GridView;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 106
    return-void
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the font size of the elements"
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->getFontSize()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public FontSize(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the font size of the elements"
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setFontSize(F)V

    .line 156
    return-void
.end method

.method public Padding()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

    move v0, v1

    return v0
.end method

.method public Padding(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The amount of padding (in DIP) on left, top, right, bottom"
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/GridView;->ESt8lrIffFGR3zRMjd5dWbJ7NZymJSmv5KENFDX7fPBQMwlHzz9dP6Ts0eqkVO5e:I

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setPadding(I)V

    .line 190
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the selected item from GridView"
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v2, v0

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the selection to the GridView"
    .end annotation

    .prologue
    .line 295
    move-object v1, p0

    move-object v2, p1

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 296
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/GridView;->Elements()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    move-object v3, v5

    .line 297
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 298
    move-object v5, v2

    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setSelection(I)V

    .line 300
    move-object v5, v1

    move v6, v4

    int-to-long v6, v6

    iput-wide v6, v5, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    .line 301
    .line 304
    :goto_1
    return-void

    .line 297
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    :cond_1
    goto :goto_1
.end method

.method public StretchEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Control how items are stretched to fill their space"
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/GridView;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:Z

    .line 121
    move v2, v1

    if-eqz v2, :cond_0

    .line 122
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 126
    goto :goto_0
.end method

.method public TextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/GridView;->textColor:I

    move v0, v1

    return v0
.end method

.method public TextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setTextColor(I)V

    .line 144
    return-void
.end method

.method public ThumbnailHeight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets current height of thumbnails"
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public ThumbnailHeight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "155"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the thumbnail height in DIP (Density Independent Pixels)"
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V

    .line 283
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->requestLayout()V

    .line 285
    return-void
.end method

.method public ThumbnailWidth()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets current width of thumbnails"
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public ThumbnailWidth(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "155"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the thumbnail width in DIP (Density Independent Pixels)"
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V

    .line 252
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->requestLayout()V

    .line 254
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    move-object v0, v1

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 323
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide/from16 v5, p4

    move-object v7, v1

    move v8, v4

    int-to-long v8, v8

    iput-wide v8, v7, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    .line 324
    move-object v7, v1

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/GridView;->AfterPicking(Ljava/lang/String;)V

    .line 325
    return-void
.end method
