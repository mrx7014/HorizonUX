.class Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iget v0, p1, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iput v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    .line 286
    iget v0, p1, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iput v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    .line 287
    iget-object v0, p1, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    .line 288
    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 277
    iget v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .line 277
    iput p1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 277
    iget v0, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    .param p1, "x1"    # I

    .line 277
    iput p1, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 292
    instance-of v0, p1, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 296
    .local v0, "other":Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v3, v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget v3, v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    .line 298
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 296
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 303
    const/16 v0, 0x11

    .line 304
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    add-int/2addr v1, v2

    .line 305
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    add-int/2addr v0, v2

    .line 306
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/ui/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 307
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
