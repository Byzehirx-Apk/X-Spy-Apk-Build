.class public abstract Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

.field private EF39AXcqvcVSzkIDlhtBxpJQpYLF2tkAZ1Yh8aWSrM6HvDBggPKm9DsfgSWrxWia:Ljava/lang/String;

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:[Ljava/lang/String;


# direct methods
.method protected varargs constructor <init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

    .line 36
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->EF39AXcqvcVSzkIDlhtBxpJQpYLF2tkAZ1Yh8aWSrM6HvDBggPKm9DsfgSWrxWia:Ljava/lang/String;

    .line 37
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final getPermissions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 67
    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    .line 68
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public onDenied([Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/Form;

    move-object v2, v6

    .line 55
    move-object v6, v1

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 56
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Component;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->EF39AXcqvcVSzkIDlhtBxpJQpYLF2tkAZ1Yh8aWSrM6HvDBggPKm9DsfgSWrxWia:Ljava/lang/String;

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public abstract onGranted()V
.end method
