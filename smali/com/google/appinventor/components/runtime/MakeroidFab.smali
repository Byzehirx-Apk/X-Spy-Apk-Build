.class public Lcom/google/appinventor/components/runtime/MakeroidFab;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    helpUrl = "https://docs.kodular.io/components/user-interface/floating-action-button/"
    iconName = "images/fab.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "fabextension.aar",
        "fabextension.jar"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

.field private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

.field private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

.field private MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

.field private O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

.field private OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

.field private YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:I

.field private activity:Landroid/app/Activity;

.field private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

.field private backgroundColor:I

.field private bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

.field private nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 58
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    .line 59
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    .line 60
    move-object v2, v0

    const v3, -0xde690e

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    .line 61
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:I

    .line 62
    move-object v2, v0

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 63
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    .line 64
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    .line 65
    move-object v2, v0

    const/16 v3, 0x12c

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    .line 67
    move-object v2, v0

    const/high16 v3, 0x43b40000    # 360.0f

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    .line 68
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 69
    move-object v2, v0

    const-string/jumbo v3, "add"

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    .line 70
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    .line 71
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

    .line 77
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 78
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    .line 79
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    .line 80
    move-object v2, v0

    new-instance v3, Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    .line 82
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MakeroidFab;->Initialize()V

    .line 83
    move-object v2, v1

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    .line 84
    const-string/jumbo v2, "Makeroid Fab"

    const-string/jumbo v3, "Makeroid Fab Created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 85
    return-void
.end method

.method private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V
    .locals 8

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string/jumbo v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    aput v6, v4, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 460
    return-void
.end method

.method private Initialize()V
    .locals 9

    .prologue
    .line 92
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v2, :cond_0

    .line 94
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 95
    move-object v1, v3

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 108
    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    .line 111
    move-object v2, v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/MakeroidFab;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 115
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800055

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(I)V

    .line 122
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    .line 125
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/MakeroidFab;->IconName(Ljava/lang/String;)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 127
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 131
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    if-eqz v2, :cond_3

    .line 135
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 140
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v3, Lcom/google/appinventor/components/runtime/MakeroidFab$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidFab$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFab;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 147
    :goto_1
    return-void

    .line 98
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 99
    const-string/jumbo v2, "Makeroid Fab"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 104
    goto :goto_1

    .line 137
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    goto :goto_0
.end method

.method private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH()V
    .locals 7

    .prologue
    .line 449
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 451
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/MakeroidFab;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .line 456
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 453
    const-string/jumbo v2, "Makeroid Fab"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 456
    :cond_0
    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v6, Landroid/graphics/Paint;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 428
    move-object v3, v7

    const/high16 v7, 0x42960000    # 75.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 429
    move-object v6, v3

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    move-object v6, v3

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 431
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 432
    move-object v6, v3

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    .line 434
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    move v2, v6

    .line 435
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    const/16 v7, 0x1e

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    move v4, v6

    .line 437
    move-object v6, v0

    move v7, v2

    move v8, v4

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    .line 438
    new-instance v6, Landroid/graphics/Canvas;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 440
    move-object v2, v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 441
    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    move v5, v6

    .line 443
    move-object v6, v2

    move-object v7, v1

    invoke-static {v7}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v8, v4

    int-to-float v8, v8

    move v9, v5

    int-to-float v9, v9

    move-object v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 445
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/Bitmap;

    move-object v0, v6

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFab;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFab;)Lcom/kodular/fabextension/FloatingActionButtonExtension;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s background color."
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF2196F2"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->backgroundColor:I

    .line 246
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move v3, v1

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 247
    return-void
.end method

.method public CallFabClickOnTextMessageClick(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true the FAB click listener will be invoked on a text message click."
    .end annotation

    .prologue
    .line 568
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setCallFabClickOnTextClick(Z)V

    .line 569
    return-void
.end method

.method public CallFabClickOnTextMessageClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the FAB click listener will be invoked on a text click."
    .end annotation

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isCallFabClickOnTextClick()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public CallFabLongClickOnTextMessageLongClick(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true the FAB long click listener will be invoked on a text message long click."
    .end annotation

    .prologue
    .line 581
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setCallFabLongClickOnTextLongClick(Z)V

    .line 582
    return-void
.end method

.method public CallFabLongClickOnTextMessageLongClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the FAB long click listener will be invoked on a text long click."
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isCallFabLongClickOnTextLongClick()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public Click()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the fab button was clicked."
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Click"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 179
    return-void
.end method

.method public Elevation()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 280
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    move v0, v1

    return v0
.end method

.method public Elevation(F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    .line 275
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->context:Landroid/content/Context;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidFab;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:F

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setCompatElevation(F)V

    .line 276
    return-void
.end method

.method public Hide()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides the fab button."
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    .line 374
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    .line 375
    return-void
.end method

.method public HideTextMessage()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides text message."
    .end annotation

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideText()V

    .line 471
    return-void
.end method

.method public HideTextMessageOnTextClick(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Hide the text message when clicking on the message"
    .end annotation

    .prologue
    .line 542
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setHideTextOnClick(Z)V

    .line 543
    return-void
.end method

.method public HideTextMessageOnTextClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the text will hide when clicking on it."
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isHideTextOnClick()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public HideTextMessageOnTextLongClick(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Hide the text message after a long click on the text message."
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setHideTextOnLongClick(Z)V

    .line 556
    return-void
.end method

.method public HideTextMessageOnTextLongClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the text will go hidden after a long click on it."
    .end annotation

    .prologue
    .line 560
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isHideTextOnLongClick()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public Icon()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The path for the used image in FAB."
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public Icon(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    :try_start_0
    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    .line 383
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

    .line 384
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .line 390
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Makeroid Fab"

    const-string/jumbo v3, "Unable to load "

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 387
    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->bg8qLM0P8YgZYqRlUjDxWnoKnWRYKRDQeEjqrx0ja4Cy7jLWl3M1lZwjImM82eG:Ljava/lang/String;

    .line 390
    :cond_0
    goto :goto_0
.end method

.method public IconColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color for the material icon."
    .end annotation

    .prologue
    .line 423
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    move v0, v1

    return v0
.end method

.method public IconColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->e1IHYfRNckEvpOWbFvMtuN7w9PEpZtVYShhIlzbQR8mwSxiOizA6OYtX7vMfGCUT:I

    .line 418
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MakeroidFab;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH()V

    .line 419
    return-void
.end method

.method public IconName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Use a \'Material\' icon for the fab without uploading a image resource into your project. You can find the icon name here at https://material.io/resources/icons"
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public IconName(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "add"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    .line 402
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MakeroidFab;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH()V

    .line 403
    return-void
.end method

.method public LongClick()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the fab button was long clicked."
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "LongClick"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 184
    return-void
.end method

.method public MarginBottom()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s bottom margin."
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    move v0, v1

    return v0
.end method

.method public MarginBottom(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    .line 207
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    move v7, v1

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 208
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->invalidate()V

    .line 210
    return-void
.end method

.method public MarginRight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns right margin"
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    move v0, v1

    return v0
.end method

.method public MarginRight(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "16"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:I

    .line 191
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    move v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidFab;->activity:Landroid/app/Activity;

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/MakeroidFab;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:I

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidFab;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->invalidate()V

    .line 194
    return-void
.end method

.method public RippleColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s ripple color."
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRippleColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public RippleColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->YvCSL3NGR2QTRYJR2TwKp0VDudhjPNaOEVNDS5yB8p5C86x6HrXaW1BAbVOWs3Le:I

    .line 261
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(I)V

    .line 262
    return-void
.end method

.method public RotationDuration()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s rotation duration in milliseconds."
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    move v0, v1

    return v0
.end method

.method public RotationDuration(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "300"
        editorType = "integer"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    .line 321
    return-void
.end method

.method public RotationEndDegrees()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s rotation end degrees."
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    move v0, v1

    return v0
.end method

.method public RotationEndDegrees(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "360"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 348
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:F

    .line 349
    return-void
.end method

.method public RotationOnClick(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    .line 307
    return-void
.end method

.method public RotationOnClick()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if the fab will rotate on click."
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    move v0, v1

    return v0
.end method

.method public RotationStartDegrees()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the fab\'s rotation start degrees."
    .end annotation

    .prologue
    .line 340
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    move v0, v1

    return v0
.end method

.method public RotationStartDegrees(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:F

    .line 335
    return-void
.end method

.method public Show()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows the fab button."
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 368
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    .line 369
    return-void
.end method

.method public ShowTextMessage()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a new text message near to the fab with the given properties. You can do the changes with the properties in the advanded category."
    .end annotation

    .prologue
    .line 465
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->showText()V

    .line 466
    return-void
.end method

.method public ShowTextMessageOnLeftSide(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message to the left side of the floating button. If false the text will be on the right side."
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setShowTextOnLeftSide(Z)V

    .line 530
    return-void
.end method

.method public ShowTextMessageOnLeftSide()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return true if the text message is on the left side."
    .end annotation

    .prologue
    .line 534
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isShowTextOnLeftSide()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public Size()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

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
        description = "Sets the size of the button. Use \'1\' for normal, \'2\' for mini or \'3\' for auto size based on the screen size."
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 224
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 225
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    .line 233
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->invalidate()V

    .line 234
    return-void

    .line 226
    :cond_0
    move v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 227
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 228
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    goto :goto_0

    .line 230
    :cond_1
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->MquXNtZWbdf4047WbYlKutT53l31krf70C8DMUB6GwZPFECVbiJ9LgmrYHlSNQF0:I

    .line 231
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setSize(I)V

    goto :goto_0
.end method

.method public StartRotationAnimation()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts a rotation animation. You can use the \'Rotation Duration\',\'Rotation Start Degrees\' and \'Rotation End Degrees\' to define the animation. This block will work too if the \'Rotation On Click\' property is disabled."
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/MakeroidFab;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V

    .line 363
    return-void
.end method

.method public TextMessageBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message background color."
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getBackgroundColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public TextMessageBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message background color."
    .end annotation

    .prologue
    .line 503
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setBackgroundColor(I)V

    .line 504
    return-void
.end method

.method public TextMessageCornerRadius()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message corner radius."
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    iget v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    move v0, v1

    return v0
.end method

.method public TextMessageCornerRadius(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "8"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message corner radius."
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    iput v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension;->cornerRadius:F

    .line 517
    return-void
.end method

.method public TextMessageText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message."
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public TextMessageText(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message."
    .end annotation

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setText(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public TextMessageTextColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the text message color."
    .end annotation

    .prologue
    .line 495
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->getTextColor()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public TextMessageTextColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text message color."
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setTextColor(I)V

    .line 491
    return-void
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
    .line 287
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    .line 288
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    .line 292
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    .line 293
    return-void

    .line 290
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    goto :goto_0
.end method

.method public Visible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns true if the fab button is visible."
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Z

    move v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-object v0, v1

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/MakeroidFab;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Z

    if-eqz v2, :cond_0

    .line 152
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/MakeroidFab;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho()V

    .line 154
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidFab;->Click()V

    .line 155
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/MakeroidFab;->LongClick()V

    .line 160
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onOrientationChange()V
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/MakeroidFab;->Initialize()V

    .line 167
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    if-eqz v1, :cond_0

    .line 168
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->invalidateOnOrientationChange()V

    .line 170
    :cond_0
    return-void
.end method
