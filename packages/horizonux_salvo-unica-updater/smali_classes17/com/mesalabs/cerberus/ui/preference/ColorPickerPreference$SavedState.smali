.class Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;
.super Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference;
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
            "Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 238
    new-instance v0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState$1;

    invoke-direct {v0}, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 224
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 236
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    invoke-super {p0, p1, p2}, Lcom/samsung/android/ui/preference/SeslPreference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    iget-object v0, p0, Lcom/mesalabs/cerberus/ui/preference/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 232
    return-void
.end method
