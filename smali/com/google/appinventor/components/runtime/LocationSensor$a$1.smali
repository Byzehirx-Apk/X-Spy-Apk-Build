.class final Lcom/google/appinventor/components/runtime/LocationSensor$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor$a;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/location/Location;

.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/LocationSensor$a;

.field private synthetic oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:D

.field private synthetic sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:F

.field private synthetic vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:D

.field private synthetic yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor$a;DDDFLandroid/location/Location;)V
    .locals 14

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    move-object v10, v0

    move-wide v11, v2

    iput-wide v11, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:D

    move-object v10, v0

    move-wide v11, v4

    iput-wide v11, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:D

    move-object v10, v0

    move-wide v11, v6

    iput-wide v11, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:D

    move-object v10, v0

    move v11, v8

    iput v11, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:F

    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/location/Location;

    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 111
    move-object v1, p0

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:D

    move-object v8, v1

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:D

    move-object v10, v1

    iget v10, v10, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:F

    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/LocationSensor;->LocationChanged(DDDF)V

    .line 112
    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/LocationSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 113
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/LocationSensor$a$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/location/Location;

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onLocationChanged(Landroid/location/Location;)V

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
