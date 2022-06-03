.class public Lcom/google/appinventor/components/runtime/FAB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Floating Button Component to make a Floating Action Button on the right bottom of the screen"
    iconName = "images/fab.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

.field private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

.field private M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

.field private final activity:Landroid/app/Activity;

.field private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

.field private ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

.field private kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Z

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Ljava/lang/String;

.field private size:I

.field private visible:Z

.field private zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    .line 57
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FAB;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FAB;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Z

    .line 59
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Ljava/lang/String;

    .line 61
    move-object v2, v0

    const/high16 v3, -0x10000

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 63
    move-object v2, v0

    const/16 v3, 0x38

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->size:I

    .line 64
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    .line 65
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    .line 72
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 73
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB;->context:Landroid/content/Context;

    .line 74
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB;->activity:Landroid/app/Activity;

    .line 75
    const-string/jumbo v2, "FAB Extension"

    const-string/jumbo v3, "FAB Extension Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 76
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/FAB;Z)Z
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/FAB;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Z

    move v0, v2

    return v0
.end method


# virtual methods
.method public Click()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "FAB Clicked"
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Z

    if-nez v1, :cond_0

    .line 124
    move-object v1, v0

    const-string/jumbo v2, "Click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 126
    :cond_0
    return-void
.end method

.method public Color()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns Color"
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/FAB;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    move v0, v1

    return v0
.end method

.method public Color(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Color"
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 175
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    if-eqz v2, :cond_0

    .line 176
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setFloatingActionButtonColor(I)V

    .line 178
    :cond_0
    return-void
.end method

.method public Create()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create FAB"
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 83
    .line 117
    :goto_0
    return-void

    .line 85
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    .line 86
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    .line 88
    move-object v1, v0

    new-instance v2, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FAB;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;-><init>(Landroid/app/Activity;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/FAB;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:I

    .line 90
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withButtonColor(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/FAB;->size:I

    .line 91
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withButtonSize(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v2

    const v3, 0x800055

    .line 92
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withGravity(I)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/FAB;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/FAB;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    .line 93
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->withMargins(IIII)Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;->create()Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    .line 96
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    if-eqz v1, :cond_1

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hideFloatingActionButton(Z)V

    .line 98
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->showFloatingActionButton(Z)V

    .line 101
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    new-instance v2, Lcom/google/appinventor/components/runtime/FAB$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/FAB$1;-><init>(Lcom/google/appinventor/components/runtime/FAB;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    new-instance v2, Lcom/google/appinventor/components/runtime/FAB$2;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/FAB$2;-><init>(Lcom/google/appinventor/components/runtime/FAB;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    goto :goto_0
.end method

.method public Icon()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns Icon Path"
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FAB;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Icon Path"
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    :goto_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Ljava/lang/String;

    .line 157
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/FAB;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FAB;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    :goto_1
    return-void

    .line 154
    :cond_0
    move-object v3, v1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    const-string/jumbo v2, "FAB Extension"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 160
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FAB;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    .line 162
    goto :goto_1
.end method

.method public IsCreated()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is FAB created?"
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    move v0, v1

    return v0
.end method

.method public LongClick()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "FAB Long Clicked"
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:Z

    if-eqz v1, :cond_0

    .line 133
    move-object v1, v0

    const-string/jumbo v2, "LongClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 135
    :cond_0
    return-void
.end method

.method public MarginBottom()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns bottom margin"
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/FAB;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    move v0, v1

    return v0
.end method

.method public MarginBottom(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Bottom Margin in dp, Default = 16"
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    .line 254
    return-void
.end method

.method public MarginRight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns right margin"
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/FAB;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    move v0, v1

    return v0
.end method

.method public MarginRight(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set Right Margin in dp, Default = 16"
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    .line 242
    return-void
.end method

.method public Size()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns FAB size in dp"
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/FAB;->size:I

    move v0, v1

    return v0
.end method

.method public Size(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "size"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set FAB Size.\nSet it to 1 for Normal size, 2 for Mini."
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 188
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 189
    move-object v2, v0

    const/16 v3, 0x28

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->size:I

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    move-object v2, v0

    const/16 v3, 0x38

    iput v3, v2, Lcom/google/appinventor/components/runtime/FAB;->size:I

    .line 193
    goto :goto_0
.end method

.method public UseAnimation(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    if-eqz v2, :cond_0

    .line 227
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FAB;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    .line 229
    :cond_0
    return-void
.end method

.method public UseAnimation()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Are animations on?"
    .end annotation

    .prologue
    .line 233
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    move v0, v1

    return v0
.end method

.method public Visible(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/FAB;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Z

    if-eqz v2, :cond_1

    .line 207
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    .line 208
    move v2, v1

    if-eqz v2, :cond_0

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/FAB;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->showFloatingActionButton(Z)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FAB;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/FAB;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hideFloatingActionButton(Z)V

    .line 214
    :cond_1
    goto :goto_0
.end method

.method public Visible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is FAB visible?"
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/FAB;->visible:Z

    move v0, v1

    return v0
.end method
