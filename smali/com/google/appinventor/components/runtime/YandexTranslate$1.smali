.class final Lcom/google/appinventor/components/runtime/YandexTranslate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/YandexTranslate;->RequestTranslation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

.field private synthetic yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->yBWgr1TFnOTkj12JSinX7tDktLYDdE0hbjWh6SJ840mGKDqolkYZlpsg76XJs9ig:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->ArOjKO7pqAIWG8ZZlv3YBxnAZj1pb9t33KRX1FDn1YZBKlUfegr0dDdXoq3tBTrf:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/YandexTranslate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/YandexTranslate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .line 104
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    const-string/jumbo v3, "RequestTranslation"

    const/16 v4, 0x89b

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 103
    goto :goto_0

    .line 101
    :catch_1
    move-exception v1

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/YandexTranslate;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/YandexTranslate$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/YandexTranslate;

    const-string/jumbo v3, "RequestTranslation"

    const/16 v4, 0x89a

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 104
    goto :goto_0
.end method
