.class public final Lcom/google/appinventor/components/runtime/MakeroidSpotlight;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Spotlight component"
    iconName = "images/spotlight.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "Spotlight.aar",
        "Spotlight.jar"
    }
.end annotation


# instance fields
.field private AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

.field private AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field private K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

.field private LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

.field private Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

.field private UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

.field private YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

.field private YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

.field private ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

.field private activity:Landroid/app/Activity;

.field private cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

.field private hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

.field private iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

.field private nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

.field private q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

.field private sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Z

.field private seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

.field private z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 70
    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    move-object v3, v1

    const/high16 v4, -0x42000000    # -0.125f

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    .line 46
    move-object v3, v1

    const/16 v4, 0x20

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    .line 47
    move-object v3, v1

    const v4, -0xc0ae4b

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    .line 49
    move-object v3, v1

    const/16 v4, 0x10

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    .line 50
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    .line 51
    move-object v3, v1

    const v4, -0xc0ae4b

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    .line 52
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    .line 53
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    .line 54
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    .line 55
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    .line 56
    move-object v3, v1

    const-wide/16 v4, 0x190

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    .line 57
    move-object v3, v1

    const-wide/16 v4, 0x190

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    .line 58
    move-object v3, v1

    const-wide/16 v4, 0x190

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    .line 59
    move-object v3, v1

    const/16 v4, 0x14

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    .line 62
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    .line 63
    move-object v3, v1

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    .line 64
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    .line 67
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Z

    .line 71
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 72
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->activity:Landroid/app/Activity;

    .line 73
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->context:Landroid/content/Context;

    .line 74
    move-object v3, v1

    new-instance v4, Lcom/wooplr/spotlight/prefs/PreferencesManager;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/wooplr/spotlight/prefs/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    .line 76
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 78
    move-object v3, v2

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    .line 79
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)Z
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    move-object v4, v1

    move v5, v2

    move v1, v5

    move-object v2, v4

    move v3, v5

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Z

    move v0, v1

    return v0
.end method


# virtual methods
.method public final CirclePadding()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    move v0, v1

    return v0
.end method

.method public final CirclePadding(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "20"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The padding for the circle spotlight. Default is \'20\'."
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    .line 320
    return-void
.end method

.method public final Clicked()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the spotlight is clicked."
    .end annotation

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Clicked"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 462
    return-void
.end method

.method public final Component()Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the component."
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    move-object v0, v1

    return-object v0
.end method

.method public final Component(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "component"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The component to show in the spotlight."
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 96
    return-void
.end method

.method public final DismissOnBackPress(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Dismiss the spotlight on back pressed."
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    .line 222
    return-void
.end method

.method public final DismissOnBackPress()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not DismissOnBackPress is enabled."
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    move v0, v1

    return v0
.end method

.method public final DismissOnTouch(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Dismiss the spotlight on touch"
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    .line 236
    return-void
.end method

.method public final DismissOnTouch()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not DismissOnTouch is enabled."
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    move v0, v1

    return v0
.end method

.method public final EnableDismissAfterShown(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Dismiss spotlight on touch after spotlight is completely visible."
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    .line 250
    return-void
.end method

.method public final EnableDismissAfterShown()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not EnableDismissAfterShown is enabled."
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    move v0, v1

    return v0
.end method

.method public final EnableRevealAnimation(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable reveal animation (Only for Lollipop and above)."
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    .line 264
    return-void
.end method

.method public final EnableRevealAnimation()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether or not EnableRevealAnimation is enabled."
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    move v0, v1

    return v0
.end method

.method public final FadeinTextDuration()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the FadeinTextDuration."
    .end annotation

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final FadeinTextDuration(J)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Fade in animation duration for spotlight text (Heading and Sub-heading)."
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    .line 292
    return-void
.end method

.method public final FontHeadingTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    move v0, v1

    return v0
.end method

.method public final FontHeadingTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:I

    .line 332
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    .line 333
    return-void
.end method

.method public final FontHeadingTypefaceImport(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 346
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    .line 348
    :cond_0
    return-void
.end method

.method public final FontSubheadingTypeface()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    move v0, v1

    return v0
.end method

.method public final FontSubheadingTypeface(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:I

    .line 355
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    .line 356
    return-void
.end method

.method public final FontSubheadingTypefaceImport(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    .line 369
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    .line 371
    :cond_0
    return-void
.end method

.method public final HeadingText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight heading text."
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final HeadingText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight heading text."
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public final HeadingTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight heading text color."
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    move v0, v1

    return v0
.end method

.method public final HeadingTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight heading text color."
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    .line 152
    return-void
.end method

.method public final HeadingTextSize()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight heading text size."
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    move v0, v1

    return v0
.end method

.method public final HeadingTextSize(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "32"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight heading size."
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    .line 138
    return-void
.end method

.method public final IntroAnimationDuration()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the IntroAnimationDuration."
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final IntroAnimationDuration(J)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Intro animation duration (For Reveal and Fadein)."
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    .line 278
    return-void
.end method

.method public final LineAndArcColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight line and arc color."
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    move v0, v1

    return v0
.end method

.method public final LineAndArcColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight line and arc color."
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    .line 208
    return-void
.end method

.method public final LineAnimationDuration()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the LineAnimationDuration."
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final LineAnimationDuration(J)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Line animation duration"
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    .line 306
    return-void
.end method

.method public final MaskColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight mask color."
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    move v0, v1

    return v0
.end method

.method public final MaskColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&Hbe000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight mask color"
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    .line 110
    return-void
.end method

.method public final ShowSpotlight()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to show the spotlight."
    .end annotation

    .prologue
    .line 389
    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    invoke-virtual {v2}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->resetAll()V

    .line 390
    move-object v2, v1

    new-instance v3, Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;-><init>(Landroid/app/Activity;)V

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    .line 391
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->maskColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

    .line 392
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    .line 393
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    .line 394
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    .line 395
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    .line 396
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    .line 397
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    .line 398
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAndArcColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    .line 399
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnBackPress(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    .line 400
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnTouch(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    .line 401
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableDismissAfterShown(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    .line 402
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableRevealAnimation(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    .line 403
    invoke-virtual {v3, v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;->introAnimationDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    .line 404
    invoke-virtual {v3, v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;->fadeinTextDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    .line 405
    invoke-virtual {v3, v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAnimDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 406
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->target(Landroid/view/View;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    .line 407
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->targetPadding(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    const/16 v4, 0x14

    .line 408
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->extraPaddingForArc(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    .line 409
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    .line 410
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setSubHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    .line 411
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->showTargetArc(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)V

    .line 412
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    .line 419
    invoke-virtual {v3}, Lcom/wooplr/spotlight/SpotlightView$Builder;->show()Lcom/wooplr/spotlight/SpotlightView;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

    .line 420
    move-object v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Z

    .line 421
    return-void
.end method

.method public final ShowSpotlightOnFAB(Lcom/google/appinventor/components/runtime/MakeroidFab;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to show the spotlight on a floating action button."
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/prefs/PreferencesManager;

    invoke-virtual {v2}, Lcom/wooplr/spotlight/prefs/PreferencesManager;->resetAll()V

    .line 426
    move-object v2, v0

    new-instance v3, Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;-><init>(Landroid/app/Activity;)V

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    .line 427
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->maskColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

    .line 428
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    .line 429
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    .line 430
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->headingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    .line 431
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    .line 432
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    .line 433
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->subHeadingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->seAn8f9TucJq5ZQrZ6xvA6wzyVfqYrHR0kVGH9g6Rg5gdXevmQRBQv2iJqrzi5Rz:I

    .line 434
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAndArcColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Z

    .line 435
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnBackPress(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->Ta6bjdQXoFeEb44hWQ7kTTTXw2rT1LHw6UX7lms7WU7H0AkpETH9D9EhELUfywQi:Z

    .line 436
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->dismissOnTouch(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Z

    .line 437
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableDismissAfterShown(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    .line 438
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->enableRevealAnimation(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:J

    .line 439
    invoke-virtual {v3, v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;->introAnimationDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:J

    .line 440
    invoke-virtual {v3, v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;->fadeinTextDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:J

    .line 441
    invoke-virtual {v3, v4, v5}, Lcom/wooplr/spotlight/SpotlightView$Builder;->lineAnimDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v1

    .line 442
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/MakeroidFab;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->target(Landroid/view/View;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:I

    .line 443
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->targetPadding(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    const/16 v4, 0x14

    .line 444
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->extraPaddingForArc(I)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Typeface;

    .line 445
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Typeface;

    .line 446
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setSubHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    .line 447
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->showTargetArc(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)V

    .line 448
    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView$Builder;->setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)Lcom/wooplr/spotlight/SpotlightView$Builder;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Lcom/wooplr/spotlight/SpotlightView$Builder;->show()Lcom/wooplr/spotlight/SpotlightView;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

    .line 456
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Z

    .line 457
    return-void
.end method

.method public final ShowTargetArc(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    .line 378
    return-void
.end method

.method public final ShowTargetArc()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to true you will see a half round circle below the spotlight circle."
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Z

    move v0, v1

    return v0
.end method

.method public final SubheadingText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight subheading text."
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final SubheadingText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight subheading text."
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public final SubheadingTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight subheading text color."
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    move v0, v1

    return v0
.end method

.method public final SubheadingTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight subheading text color."
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    .line 194
    return-void
.end method

.method public final SubheadingTextSize()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the Spotlight subheading text size."
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    move v0, v1

    return v0
.end method

.method public final SubheadingTextSize(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Spotlight subheading text size."
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    .line 180
    return-void
.end method

.method public final onOrientationChange()V
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

    if-eqz v1, :cond_0

    .line 85
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/wooplr/spotlight/SpotlightView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wooplr/spotlight/SpotlightView;->removeSpotlightView(Z)V

    .line 86
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ShowSpotlight()V

    .line 88
    :cond_0
    return-void
.end method
