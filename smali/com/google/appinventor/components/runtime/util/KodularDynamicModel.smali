.class public Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/lang/Object;

.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/Object;

.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/Object;

.field private T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 14
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 15
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->setId(I)V

    .line 16
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->setObject(Ljava/lang/Object;)V

    .line 17
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->setViewHolder(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->setId(I)V

    .line 22
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->setObject(Ljava/lang/Object;)V

    .line 23
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->setViewHolder(Ljava/lang/Object;)V

    .line 24
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->setChildViewHolder(Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getChildViewHolder()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    move v0, v1

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getViewHolder()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public setChildViewHolder(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setId(I)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    .line 29
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setViewHolder(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/util/KodularDynamicModel;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/lang/Object;

    .line 45
    return-void
.end method
