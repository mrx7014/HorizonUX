.class Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lcom/samsung/android/ui/app/SeslAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .line 97
    if-eqz p3, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v0}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$200(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v2}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$100(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$076(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;I)Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v0}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$200(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-static {v2}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$100(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$076(Lcom/samsung/android/ui/preference/MultiSelectListPreferenceDialogFragmentCompat;I)Z

    .line 102
    :goto_0
    return-void
.end method
