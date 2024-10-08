.class Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;
.super Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;
.source "SeslSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/SeslSeekBarPreference;
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
            "Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mMax:I

.field public mMin:I

.field public mSeekBarValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    new-instance v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;

    .line 253
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mSeekBarValue:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMin:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMax:I

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 261
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # I

    .line 264
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mSeekBarValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Lcom/samsung/android/ui/preference/SeslSeekBarPreference$SavedState;->mMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    return-void
.end method
