.class final Lcom/google/appinventor/components/runtime/Form$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 4

    .prologue
    .line 1037
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 1039
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1040
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/KodularBilling;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularBilling;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->access$1002(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/KodularBilling;)Lcom/google/appinventor/components/runtime/util/KodularBilling;

    move-result-object v2

    .line 1042
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 1044
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->access$802(Lcom/google/appinventor/components/runtime/Form;Z)Z

    move-result v2

    .line 1046
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "Initialize"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 1047
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1048
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "Fixed"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 1052
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1202(Z)Z

    move-result v2

    .line 1054
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "receiveSharedValueType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Form;->access$1300(Lcom/google/appinventor/components/runtime/Form;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1055
    const-string/jumbo v2, "Form"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "receiveSharedValue: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1056
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Form;->access$1300(Lcom/google/appinventor/components/runtime/Form;)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->receiveSharedValue:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->GotReceivedShared(ILjava/lang/String;)V

    .line 1059
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1400(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_1
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 1060
    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    .line 1061
    goto :goto_1

    .line 1050
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v3, "Responsive"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_2
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_3

    .line 1063
    sget-object v2, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v2, Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v1, v2

    .line 1188
    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "HandleReturnValues() Called, replResult = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1189
    move-object v2, v1

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 1190
    move-object v2, v1

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/ReplForm;->OtherScreenClosed(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1191
    sget-object v2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Called OtherScreenClosed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1192
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    .line 1066
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    const-string/jumbo v3, "Screen1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1067
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->init(Landroid/app/Application;Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    .line 1068
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$1000(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/KodularBilling;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/KodularBilling;->update()V

    .line 1076
    :goto_2
    return-void

    .line 1070
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->formName:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->screenOpen(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    goto :goto_2

    .line 1074
    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form$16;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 1076
    goto :goto_2
.end method
