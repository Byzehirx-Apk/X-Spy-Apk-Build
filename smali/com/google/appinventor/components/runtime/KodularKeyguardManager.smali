.class public Lcom/google/appinventor/components/runtime/KodularKeyguardManager;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/keyguardManager.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.DISABLE_KEYGUARD"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

.field private activity:Landroid/app/Activity;

.field private final androidUIHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

.field private n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 41
    move-object v2, v0

    new-instance v3, Landroid/os/Handler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    .line 43
    move-object v2, v0

    const-string/jumbo v3, "Unlock"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    .line 44
    move-object v2, v0

    const-string/jumbo v3, "Confirm your screen lock."

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    .line 52
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->context:Landroid/content/Context;

    .line 53
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 54
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->context:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    .line 55
    const-string/jumbo v2, "Keyguard Manager"

    const-string/jumbo v3, "Keyguard Manager Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 56
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)Landroid/os/Handler;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public Description()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the keyguard manager description text."
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Description(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Confirm your screen lock."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public OnAuthenticationRequest(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect a authentication request was called."
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnAuthenticationRequest"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 211
    return-void
.end method

.method public OnDissmissKeyguardRequest(ZZ)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect a dissmiss request keyguard was called."
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "OnDissmissKeyguardRequest"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 216
    return-void
.end method

.method public RequestDismissKeyguard()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "If the device is currently locked, requests the Keyguard to be dismissed. Works only for devices with Android 8+"
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 171
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$3;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 206
    :cond_0
    return-void
.end method

.method public ShowAuthenticationScreen()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create the Confirm Credentials screen. You can customize the title and description. Or we will provide a generic one for you if you leave it empty. Works only for devices with Android 5+"
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    .line 133
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 136
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 137
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v3

    iput v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->requestCode:I

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->requestCode:I

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    :cond_1
    return-void

    .line 134
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Title()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->Description()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public ShowWhenLocked(Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Specifies whether an Activity should be shown on top of the lock screen whenever the lockscreen is up and the activity is resumed. Normally an activity will be transitioned to the stopped state if it is started while the lockscreen is up, but with this flag set the activity will remain in the resumed state visible on-top of the lock screen. "
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_0

    .line 117
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v2, v3

    .line 120
    move v3, v1

    if-eqz v3, :cond_1

    .line 121
    move-object v3, v2

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 123
    :cond_1
    move-object v3, v2

    const/high16 v4, 0x80000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 126
    goto :goto_0
.end method

.method public Title()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the keyguard manager title text."
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Unlock"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public isDeviceLocked()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the device is currently locked and requires a PIN, pattern or password to unlock. Works only for devices with Android 5.1+"
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 86
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    move v0, v1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the device is secured with a PIN, pattern or password. Works only for devices with Android 6+"
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 95
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    move v0, v1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return whether the keyguard is currently locked."
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return whether the keyguard is secured by a PIN, pattern or password or a SIM card is currently locked."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 9

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->requestCode:I

    if-ne v4, v5, :cond_1

    .line 146
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 148
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$1;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/KodularKeyguardManager;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/KodularKeyguardManager$2;-><init>(Lcom/google/appinventor/components/runtime/KodularKeyguardManager;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 165
    :cond_1
    goto :goto_0
.end method
