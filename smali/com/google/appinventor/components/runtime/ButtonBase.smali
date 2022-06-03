.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "spinkit.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[F

.field private static mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

.field private static sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I


# instance fields
.field private ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Z

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/Button;

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/content/Context;

.field private fontTypeface:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

.field private imagePath:Ljava/lang/String;

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

.field private rotationAngle:D

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

.field private textColor:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[F

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return-void

    .line 57
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 105
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 63
    move-object v3, v1

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    .line 64
    move-object v3, v1

    const v4, -0xbbbbbc

    iput v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    .line 65
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 66
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 67
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z

    .line 68
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 69
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    .line 70
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    .line 71
    move-object v3, v1

    const v4, -0x616162

    iput v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 72
    move-object v3, v1

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 76
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Z

    .line 83
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->rotationAngle:D

    .line 106
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    .line 107
    move-object v3, v1

    new-instance v4, Landroid/widget/Button;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    .line 108
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 111
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    .line 112
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    .line 113
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v3

    sput v3, Lcom/google/appinventor/components/runtime/ButtonBase;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I

    .line 114
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v3

    sput v3, Lcom/google/appinventor/components/runtime/ButtonBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    .line 115
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/Button;

    .line 117
    move-object v3, v1

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f666666    # 0.9f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    .line 118
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 119
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 121
    move-object v3, v1

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    .line 122
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x15e

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 123
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 125
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 127
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 129
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 136
    move-object v3, v1

    const v4, -0xbbbbbc

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->BackgroundColor(I)V

    .line 137
    move-object v3, v1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Image(Ljava/lang/String;)V

    .line 138
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Enabled(Z)V

    .line 139
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 140
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    move-object v5, v1

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v6, v1

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 141
    move-object v3, v1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 142
    move-object v3, v1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 143
    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 144
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    .line 145
    move-object v3, v1

    const v4, -0x333334

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchColor(I)V

    .line 146
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/ButtonBase;->RotationAngle(D)V

    .line 147
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->BorderShadow(Z)V

    .line 148
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontBold(Z)V

    .line 149
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontItalic(Z)V

    .line 150
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontTypeface(I)V

    .line 151
    move-object v3, v1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontTypefaceImport(Ljava/lang/String;)V

    .line 152
    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Width(I)V

    .line 153
    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/ButtonBase;->Height(I)V

    .line 154
    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()V
    .locals 10

    .prologue
    .line 411
    move-object v0, p0

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    move-object v1, v3

    .line 414
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v4, -0xbbbbbc

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v3, :cond_1

    .line 415
    :cond_0
    const-string/jumbo v3, "#5a595b"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 419
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    packed-switch v3, :pswitch_data_0

    .line 432
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 417
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    move v2, v3

    goto :goto_0

    .line 423
    :pswitch_0
    move-object v3, v1

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    sget-object v6, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 424
    .line 435
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 436
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setRippleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 438
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->setMargin()V

    .line 448
    :goto_2
    return-void

    .line 426
    :pswitch_1
    move-object v3, v1

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 427
    goto :goto_1

    .line 429
    :pswitch_2
    move-object v3, v1

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 430
    goto :goto_1

    .line 440
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 441
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->setMargin()V

    goto :goto_2

    .line 445
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 446
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->setMargin()V

    .line 448
    goto :goto_2

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 9

    .prologue
    .line 764
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    const-string/jumbo v5, "Left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 766
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 767
    .line 783
    :goto_0
    return-void

    .line 769
    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "Top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 770
    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 771
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 772
    goto :goto_0

    .line 774
    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "Right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 775
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 776
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 777
    goto :goto_0

    .line 779
    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "Bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 780
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 781
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 783
    :cond_3
    goto :goto_0
.end method

.method private updateAppearance()V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    .line 370
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    if-nez v1, :cond_4

    .line 371
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v2, -0xbbbbbc

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v1, :cond_1

    .line 374
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 394
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 400
    :goto_1
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I

    sget v3, Lcom/google/appinventor/components/runtime/ButtonBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    .line 407
    :goto_2
    return-void

    .line 378
    :cond_1
    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v2, 0xffffff

    if-eq v1, v2, :cond_2

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    const v2, 0xffffff

    if-ne v1, v2, :cond_3

    .line 380
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 385
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 391
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 398
    :cond_4
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()V

    goto :goto_1

    .line 403
    :cond_5
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 405
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    .line 407
    goto :goto_2
.end method


# virtual methods
.method public AnimationStyle(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, animation will be removed.Position can be: top, left, right, bottom. Size can be 100. "
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/ProgressHelper;->setButtonProgressAnimation(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 239
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 1244
    move-object v1, v6

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1245
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1246
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->invalidate()V

    .line 240
    return-void
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the button\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    .line 361
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 362
    return-void
.end method

.method public BorderShadow(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 630
    move-object v0, p0

    move v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 631
    move v2, v1

    if-eqz v2, :cond_1

    .line 634
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v2

    if-nez v2, :cond_0

    .line 635
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 636
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->invalidate()V

    .line 637
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .line 654
    :cond_0
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 640
    const-string/jumbo v2, "ButtonBase"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 641
    goto :goto_0

    .line 644
    :cond_1
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 645
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->invalidate()V

    .line 646
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 649
    goto :goto_0

    .line 647
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 648
    const-string/jumbo v2, "ButtonBase"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 649
    goto :goto_0

    .line 652
    :cond_2
    const-string/jumbo v2, "ButtonBase"

    const-string/jumbo v3, "Can not change button border shadows property. The api level of the device is <= 21."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 654
    goto :goto_0
.end method

.method public BorderShadow()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if the button have a outside border shadow on click."
    .end annotation

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:Z

    move v0, v1

    return v0
.end method

.method public ButtonClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Perform a button click as function."
    .end annotation

    .prologue
    .line 604
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    move-result v1

    .line 605
    return-void
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 467
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    return-void
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap check box to cause action."
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public FontBold(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 480
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 481
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 482
    return-void
.end method

.method public FontBold()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, button text is displayed in bold."
    .end annotation

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move v0, v1

    return v0
.end method

.method public FontItalic(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 509
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 510
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 511
    return-void
.end method

.method public FontItalic()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, button text is displayed in italics."
    .end annotation

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    move v0, v1

    return v0
.end method

.method public FontSize()F
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for button text."
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

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
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 524
    return-void
.end method

.method public FontTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for button text."
        userVisible = false
    .end annotation

    .prologue
    .line 530
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    move v0, v1

    return v0
.end method

.method public FontTypeface(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 537
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    .line 538
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:I

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 539
    return-void
.end method

.method public FontTypefaceImport(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 597
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 598
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/ButtonBase;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 600
    :cond_0
    return-void
.end method

.method public GotFocus()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the button so it is now possible to click it."
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "GotFocus"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 279
    return-void
.end method

.method public HTMLFormat(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 569
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

    .line 570
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 571
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public HTMLFormat()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this button will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

    move v0, v1

    return v0
.end method

.method public Image()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the button\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 334
    .line 347
    :goto_0
    return-void

    .line 336
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_1
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    .line 338
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 339
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 341
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .line 346
    :cond_1
    :goto_2
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 347
    goto :goto_0

    .line 336
    :cond_2
    move-object v3, v1

    goto :goto_1

    .line 343
    :catch_0
    move-exception v2

    const-string/jumbo v2, "ButtonBase"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Unable to load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_2
.end method

.method public LostFocus()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the button so it is now no longer possible to click it."
    .end annotation

    .prologue
    .line 284
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LostFocus"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 285
    return-void
.end method

.method public RotationAngle()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the degrees that the button is rotated around the pivot point. Increasing values result in clockwise rotation."
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->rotationAngle:D

    move-wide v0, v1

    return-wide v0
.end method

.method public RotationAngle(D)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 254
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->rotationAngle:D

    .line 255
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->rotationAngle:D

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setRotation(F)V

    .line 256
    return-void
.end method

.method public SetShadow(FFFI)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Place a blurred shadow of text underneath the text, drawn with the specified x, y, radius, color (e.g. -11, 12, 13, black."
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShadow(Landroid/widget/TextView;FFFI)V

    .line 233
    return-void
.end method

.method public Shape()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    move v0, v1

    return v0
.end method

.method public Shape(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the button\'s shape (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    .line 316
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 317
    return-void
.end method

.method public ShowFeedback(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown for a button that as an image as background."
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z

    .line 491
    return-void
.end method

.method public ShowFeedback()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s visual feedback state"
    .end annotation

    .prologue
    .line 496
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Z

    move v0, v1

    return v0
.end method

.method public Text()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on button."
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:Z

    if-eqz v2, :cond_0

    .line 551
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 555
    goto :goto_0
.end method

.method public TextAlignment()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    move v0, v1

    return v0
.end method

.method public TextAlignment(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    .line 299
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 300
    return-void
.end method

.method public TextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    move v0, v1

    return v0
.end method

.method public TextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 585
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    .line 586
    move v2, v1

    if-eqz v2, :cond_0

    .line 587
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 591
    goto :goto_0
.end method

.method public TouchColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the buttons touch color."
    .end annotation

    .prologue
    .line 622
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    move v0, v1

    return v0
.end method

.method public TouchColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the buttons touch color."
    .end annotation

    .prologue
    .line 612
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 613
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    move-object v2, v0

    const v3, -0x333334

    iput v3, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 617
    goto :goto_0
.end method

.method public TouchDown()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the button was pressed down."
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "TouchDown"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 268
    return-void
.end method

.method public TouchUp()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a button has been released."
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "TouchUp"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 273
    return-void
.end method

.method public WithIconFromFontAwesome(Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show an image on the given position near to the button. You can use following words for the position: \'Left\', \'Right\', \'Top\' or \'Bottom\'. Use the padding to add space between the icon and text. Use a \'FontAwesome\' icon as the button icon without uploading a image resource into your project. You can find the icon code here at https://fontawesome.com/cheatsheet Use as example for a heart icon just \'f004\' or \'&#xf004;\'"
    .end annotation

    .prologue
    .line 744
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v7, v5

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 745
    const/high16 v7, 0x42a00000    # 80.0f

    move v5, v7

    .line 747
    :cond_0
    move v7, v5

    float-to-int v7, v7

    move v6, v7

    .line 748
    move-object v7, v2

    :try_start_0
    const-string/jumbo v8, "&#x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 749
    const-string/jumbo v7, "&#x"

    move-object v8, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 751
    :cond_1
    move-object v7, v2

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 752
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 754
    :cond_2
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    const-string/jumbo v10, "font_awesome"

    move-object v11, v2

    move v12, v3

    move v13, v5

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    .line 755
    move-object v2, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v6

    move v14, v10

    move v10, v14

    move v11, v14

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .line 760
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v8, v1

    move-object v9, v2

    move v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 761
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v7

    const-string/jumbo v7, "ButtonBase"

    const-string/jumbo v8, "Unable to load the material icon font."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 758
    goto :goto_0
.end method

.method public WithIconFromMaterialFont(Ljava/lang/String;Ljava/lang/String;IIF)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show an image on the given position near to the button. You can use following words for the position: \'Left\', \'Right\', \'Top\' or \'Bottom\'. Use the padding to add space between the icon and text. Use a \'Material\' icon as the button icon without uploading a image resource into your project. You can find the icon name here at https://material.io/resources/icons"
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v7, v5

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    .line 722
    const/high16 v7, 0x42a00000    # 80.0f

    move v5, v7

    .line 724
    :cond_0
    move v7, v5

    float-to-int v7, v7

    move v6, v7

    .line 725
    :try_start_0
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    const-string/jumbo v10, "material"

    move-object v11, v2

    move v12, v3

    move v13, v5

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    .line 726
    move-object v2, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v6

    move v14, v10

    move v10, v14

    move v11, v14

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .line 731
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v8, v1

    move-object v9, v2

    move v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 732
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v7

    const-string/jumbo v7, "ButtonBase"

    const-string/jumbo v8, "Unable to load the material icon font."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 729
    goto :goto_0
.end method

.method public WithIconFromPicture(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show an image on the given position near to the button. You can use following words for the position: \'Left\', \'Right\', \'Top\' or \'Bottom\'. Use the padding to add space between the icon and text."
    .end annotation

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    move-object v6, v7

    .line 698
    move v7, v4

    if-nez v7, :cond_0

    .line 699
    const/16 v7, 0x64

    move v4, v7

    .line 701
    :cond_0
    move v7, v5

    if-nez v7, :cond_1

    .line 702
    const/16 v7, 0x64

    move v5, v7

    .line 704
    :cond_1
    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .line 709
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v8, v1

    move-object v9, v6

    move v10, v3

    invoke-static {v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 710
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v7

    const-string/jumbo v7, "ButtonBase"

    const-string/jumbo v8, "Unable to load "

    move-object v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 707
    goto :goto_0
.end method

.method public abstract click()V
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v0, v1

    return-object v0
.end method

.method public longClick()Z
    .locals 2

    .prologue
    .line 668
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 673
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    .line 674
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 678
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-eqz v3, :cond_0

    .line 679
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    .line 683
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 166
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/ButtonBase;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->prepareRippleDrawable(Landroid/view/View;Landroid/view/MotionEvent;I)V

    .line 175
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 177
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    .line 179
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 193
    :cond_1
    :goto_0
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 220
    :cond_2
    :goto_1
    const/4 v3, 0x0

    move v0, v3

    return v0

    .line 182
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 187
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 194
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 195
    const-string/jumbo v3, "ButtonBase"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 196
    goto :goto_1

    .line 197
    :cond_4
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 199
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->ShowFeedback()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 200
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_7

    .line 201
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 215
    :cond_6
    :goto_2
    move-object v3, v0

    :try_start_1
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ButtonBase;->TouchUp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    goto :goto_1

    .line 204
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 209
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ButtonBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 216
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 217
    const-string/jumbo v3, "ButtonBase"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public setMargin()V
    .locals 7

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ButtonBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Button;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ButtonBase;->context:Landroid/content/Context;

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setMarginToButton(Landroid/widget/Button;Landroid/content/Context;IIII)V

    .line 455
    return-void
.end method
