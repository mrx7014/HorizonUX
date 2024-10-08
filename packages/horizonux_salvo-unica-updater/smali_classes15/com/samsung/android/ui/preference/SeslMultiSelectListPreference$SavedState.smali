.class Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;
.super Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;
.source "SeslMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "var1"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, "var2":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    .line 127
    new-array v1, v0, [Ljava/lang/String;

    .line 128
    .local v1, "var3":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 134
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # I

    .line 137
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslMultiSelectListPreference$SavedState;->mValues:Ljava/util/Set;

    .line 140
    .local v0, "var3":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 141
    return-void
.end method
