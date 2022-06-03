.class public Lcom/google/appinventor/components/runtime/util/KodularBilling;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/KodularBilling$b;,
        Lcom/google/appinventor/components/runtime/util/KodularBilling$a;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/SharedPreferences;

.field private LOG_TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v3, v0

    const-string/jumbo v4, "KodularBilling"

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/KodularBilling;->LOG_TAG:Ljava/lang/String;

    .line 33
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/KodularBilling;->context:Landroid/content/Context;

    .line 34
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/KodularBilling;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 35
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/KodularBilling;->context:Landroid/content/Context;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularBilling;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/KodularBilling;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method


# virtual methods
.method public hasBrandingRemoved()Z
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularBilling;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularBilling;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".kbb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public hasCommissionRemoved()Z
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularBilling;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/KodularBilling;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".kbc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public update()V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/KodularBilling$a;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularBilling$a;-><init>(B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularBilling;->form:Lcom/google/appinventor/components/runtime/Form;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularBilling$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 40
    new-instance v1, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;-><init>(B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/KodularBilling;->form:Lcom/google/appinventor/components/runtime/Form;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularBilling$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 41
    return-void
.end method
