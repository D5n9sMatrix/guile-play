# welcome guile policy admin cl-launch and lsh protected attack ipc


The Structure and Administration of the GNU Project
Version 1.0.1
by Brandon Invergo and Richard Stallman

The GNU Project develops and maintains the GNU operating system. Through this work, and other related activities, the GNU Project advocates and promotes software freedom, the core philosophy of the free software movement.

An operating system consists of many software components that together make a computer do useful jobs. It includes code for low-level functionality, such as the kernel and drivers, plus system libraries, as well as the programs (utilities, tools, applications, and games) that users explicitly run. The GNU operating system comprises software across this entire spectrum. Many of the programs are specifically developed and released by the GNU Project; these are termed “GNU packages.” The GNU system also includes components that are free programs released by other developers, outside of the GNU Project.

Just as the programs composing an operating system must work together coherently, the GNU Project must operate coherently. Most of the work consists of developing specific programs, but these programs are not independent projects; they must fit well together to constitute the GNU system we wish for. Therefore, over the course of decades, we have developed structure for the project. None of it is new, but this is the first time we have documented all of it in one place.

The Free Software Foundation provides many kinds of support (facilities, services) to the GNU Project. How that works is outside the scope of this document.
Software Development Structure

Most of the GNU Project's activity consists of development of software packages. Here is how GNU software development is structured.
The Chief GNUisance

The GNU Project is led by the Chief GNUisance, Richard Stallman, the founder of the project. The Chief GNUisance is responsible in principle for all significant decisions, including the overall philosophy and standards, and directs the project in carrying them out. The Chief GNUisance dubs software packages as GNU packages, or decommission one when necessary, and appoints their maintainers.

In practice, the Chief GNUisance delegates many of these decisions and most of the tasks to others, and only rarely intervenes in the specifics of development of a GNU package—and usually that is with a suggestion.
Assistant GNUisances

This team, residing at <maintainers@gnu.org>, is available as a first point-of-contact for maintainers of GNU Software. They keep track of development activity across the entire project, ensuring timely releases, checking that the maintainers follow GNU's philosophy and guidelines, and resolving any conflicts that might arise. They also handle cases when a maintainer steps down or when a new volunteer steps up to maintain an existing package (in which case they can appoint a new maintainer on behalf of the Chief GNUisance).

New members are recruited from existing GNU volunteers when needed. However, help is often welcome for specific tasks and interested GNU volunteers are welcome to get in touch.
Package maintainers

Each GNU software package has specific maintainers, appointed by the Chief GNUisance or the assistant GNUisances. The package maintainers are responsible to the Chief GNUisance, under whose authority they are appointed and on rare occasions dismissed, and they are in charge of developing their packages on behalf of the GNU Project.

The initial appointment of maintainers is done when a program is accepted as a GNU package. These are normally some of the main developers who agreed to make the program a GNU package.

Over time, maintainers occasionally step down. In some cases, the sole maintainer steps down from the role, leaving the package unmaintained. The Chief GNUisance usually delegates finding and appointing new maintainers to the assistant GNUisances. See the list of currently unmaintained packages. We ask the old maintainers to recommend new maintainers, and we consider those suggestions appreciatively.

The maintainers of a package often recruit others to contribute to its development, and delegate some technical decisions to them. However, the maintainers retain authority over the whole of the package so they can carry out their responsibility to the GNU Project.

A maintainer's primary responsibility is to do a good, practical job of developing and maintaining the program in accord with the GNU Project's philosophy, mission, policies, and general decisions. Maintainers must also ensure that their packages work well with the rest of the GNU System. For more information, read about maintainers' basic duties and what it means for a program to be a GNU package.

In general, maintainers determine the technical directions that the software packages take and thus they make the day-to-day decisions for the packages. Likewise, in making their packages work well together, maintainers can work directly with each other, and we encourage them to do so. Rarely, the Chief GNUisance will make a decision that directly affects one or more GNU packages. The maintainers of the affected packages have the responsibility to execute the decision on behalf of the GNU Project.

More complete information about the specific responsibilities of maintainers and technical guidance for maintaining GNU software can be found in the Information for Maintainers of GNU Software and GNU Coding Standards documents.

We do not require that GNU package maintainers agree with our philosophy, or approve of our policies—only to follow them. Maintainers and contributors must carry out our philosophy, policies and occasional specific decisions in their work on GNU software.
Support for GNU Package Development

Several teams provide various kinds of support to the development and management of GNU packages. Most of these teams have a coordinator to direct them; in most cases, the coordinator reports directly to the Chief GNUisance unless otherwise stated. When in doubt, you can contact the GNU Volunteer Coordinators for advice.
Software Evaluation

The software evaluation team at <gnueval@gnu.org> evaluates software packages proposed as GNU packages. This involves a careful assessment of the software's functionality as well as pertinent issues related to software freedom and how the program fits with the GNU system.

New members are recruited from existing GNU volunteers when needed. Prior experience with non-GNU software evaluation on Savannah is preferable.
Software Security Evaluation

The software security evaluation team at <gnueval-security@gnu.org> works with the software evaluation team. They determine whether there are any security concerns in software that has been offered to GNU.

New members are recruited from existing GNU volunteers when needed.
Security Team

The Security Team helps to resolve security bugs in a timely fashion. If the maintainer of a GNU package fails to respond to a report of a security flaw, the reporter can escalate the issue to the security team. If it decides the issue is urgent, it can develop a patch and publish a fixed release of the package. Maintainers can also ask the security team for advice in securing their packages.

New members are recruited from existing GNU volunteers when needed.
Platform Testers

Volunteers behind the platform-testers@gnu.org mailing list test GNU software pre-releases on different hardware platforms to ensure that it functions correctly.

New volunteers are welcome.
Mentors

The GNU Mentors at <mentors@gnu.org> volunteer to provide guidance for new software maintainers.

We ask long-time GNU maintainers to volunteer.
Proofreaders

The proofreaders list is available to help GNU package maintainers by proofreading English text. To request proofreading, write to <proofreaders@gnu.org>.
Other Teams and Services

Several other teams facilitate or manage the day-to-day operations within the GNU Project, or advance specific goals of the project.
GNU Advisory Committee

The GNU Advisory Committee (GAC) exists to provide advice to the Chief GNUisance. Members of the Advisory Committee are appointed by the Chief GNUisance. The Advisory Committee generally monitors the health of the GNU Project on behalf of the Chief GNUisance and they raise potential issues for discussion.
Savannah Hackers

Savannah is the GNU Project's software forge. It hosts code repositories, bug reporting tools, mailing list interfaces and more. Savannah is administered by the Savannah Hackers. They keep the forge software up and running. In addition to ensuring that GNU software is properly hosted in the service, the Savannah Hackers also evaluate non-GNU software that applies to be hosted on the forge.

New volunteers are welcome.
Webmasters

The GNU Webmasters maintain and update the web pages at https://www.gnu.org.

Webmasters also answer various kinds of questions sent by the public, regarding topics such as free software and licenses (when the answer is clear). They do initial filtering of requests to evaluate a distro, evaluate people who would like to become webmasters, and update the list of mirrors.

The GNU Webmaster Group is led by the Chief Webmaster who reports to  the Chief GNUisance. New volunteers are welcome. See the Volunteer Webmaster Quiz.
Web Translators

Each language has a translation team, directed by a team coordinator. See the Guide to Translating Web Pages on www.gnu.org for more information. The team coordinators report to the GNU Translations Manager, who reports to the Chief GNUisance.
List Helpers

Listhelper is a system for semi-automatically managing spam sent to GNU mailing lists. Most spam is caught by spam filters, but human moderators are also available to manage the queue of messages predicted not to be spam.

New members are recruited from existing GNU volunteers when needed.
GNU Volunteer Coordinators

The GNU Volunteer Coordinators at <gvc@gnu.org> help to guide new volunteers towards suitable jobs within the GNU Project

New GVC volunteers are welcome, but prior experience volunteering within GNU (and thus broad knowledge of the GNU Project) is highly recommended.
GNU Education Team

The GNU Education Team promotes the adoption of the GNU Operating System in educational environments. It also evaluates schools and speaks to school administrators.

New volunteers are welcome.
GNU Standards Group

The GNU Standards Group evaluates proposals to update the GNU coding standards. Anyone can submit a proposal via the bug-standards mailing list. The group then discusses and evaluates the proposal to work out all the details and implications. They then present the proposal and a recommendation to the Chief GNUisance, who makes the decision. The group is also responsible for installing changes to the document as well as updating the document on the web.

New volunteers are recruited from existing GNU volunteers when needed.
Correcting Errors

If we find errors or omissions in this description of the existing structure, which are possible since it previously had no centralized documentation, we will update this document, both the Org version and the HTML version, advancing the third version number. We will keep older versions available in a subdirectory.
Future Changes in Administrative Structure

Changes in the GNU Project administrative structure are decided on by the Chief GNUisance after starting consultations with GNU contributors, usually on appropriate GNU Project discussion lists. The aim of these consultations is to consider possible alternatives and anticipate what good and bad effects they would have, so as to make a wise decision.

To report changes that are adopted, we will update this document, both the Org version and the HTML version (see previous section), advancing the first and/or second version number.

An Org version of this document is also available.

5.6.2 Altering the CDR of a List

The lowest-level primitive for modifying a CDR is setcdr:

Function: setcdr cons object ¶

    This function stores object as the new CDR of cons, replacing its previous CDR. In other words, it changes the CDR slot of cons to refer to object. It returns the value object. 

Here is an example of replacing the CDR of a list with a different list. All but the first element of the list are removed in favor of a different sequence of elements. The first element is unchanged, because it resides in the CAR of the list, and is not reached via the CDR.

```
(setq x (list 1 2 3))
     ⇒ (1 2 3)

(setcdr x '(4))
     ⇒ (4)

x
     ⇒ (1 4)
```

You can delete elements from the middle of a list by altering the CDRs of the cons cells in the list. For example, here we delete the second element, b, from the list (a b c), by changing the CDR of the first cons cell:

```
(setq x1 (list 'a 'b 'c))
     ⇒ (a b c)
(setcdr x1 (cdr (cdr x1)))
     ⇒ (c)
x1
     ⇒ (a c)
```

Here is the result in box notation:

```
                   --------------------
                  |                    |
 --------------   |   --------------   |    --------------
| car   | cdr  |  |  | car   | cdr  |   -->| car   | cdr  |
|   a   |   o-----   |   b   |   o-------->|   c   |  nil |
|       |      |     |       |      |      |       |      |
 --------------       --------------        --------------
```

The second cons cell, which previously held the element b, still exists and its CAR is still b, but it no longer forms part of this list.

It is equally easy to insert a new element by changing CDRs:

```
(setq x1 (list 'a 'b 'c))
     ⇒ (a b c)
(setcdr x1 (cons 'd (cdr x1)))
     ⇒ (d b c)
x1
     ⇒ (a d b c)
```

Here is this result in box notation:

```
 --------------        -------------       -------------
| car  | cdr   |      | car  | cdr  |     | car  | cdr  |
|   a  |   o   |   -->|   b  |   o------->|   c  |  nil |
|      |   |   |  |   |      |      |     |      |      |
 --------- | --   |    -------------       -------------
           |      |
     -----         --------
    |                      |
    |    ---------------   |
    |   | car   | cdr   |  |
     -->|   d   |   o------
        |       |       |
         ---------------
```

6.18.3 Creating Guile Modules

When you want to create your own modules, you have to take the following steps:

    Create a Scheme source file and add all variables and procedures you wish to export, or which are required by the exported procedures.
    Add a define-module form at the beginning.
    Export all bindings which should be in the public interface, either by using define-public or export (both documented below). 

syntax: define-module module-name option …

    module-name is a list of one or more symbols.

    (define-module (ice-9 popen))

    define-module makes this module available to Guile programs under the given module-name.

    option … are keyword/value pairs which specify more about the defined module. The recognized options and their meaning are shown in the following table.

    #:use-module interface-specification

        Equivalent to a (use-modules interface-specification) (see Using Guile Modules).
    #:autoload module symbol-list

        Load module when any of symbol-list are accessed. For example,

        (define-module (my mod)
          #:autoload (srfi srfi-1) (partition delete-duplicates))
        ...
        (when something
          (set! foo (delete-duplicates ...)))

        When a module is autoloaded, only the bindings in symbol-list become available20.

        An autoload is a good way to put off loading a big module until it’s really needed, for instance for faster startup or if it will only be needed in certain circumstances.
    #:export list

        Export all identifiers in list which must be a list of symbols or pairs of symbols. This is equivalent to (export list) in the module body.
    #:re-export list

        Re-export all identifiers in list which must be a list of symbols or pairs of symbols. The symbols in list must be imported by the current module from other modules. This is equivalent to re-export below.
    #:replace list

        Export all identifiers in list (a list of symbols or pairs of symbols) and mark them as replacing bindings. In the module user’s name space, this will have the effect of replacing any binding with the same name that is not also “replacing”. Normally a replacement results in an “override” warning message, #:replace avoids that.

        In general, a module that exports a binding for which the (guile) module already has a definition should use #:replace instead of #:export. #:replace, in a sense, lets Guile know that the module purposefully replaces a core binding. It is important to note, however, that this binding replacement is confined to the name space of the module user. In other words, the value of the core binding in question remains unchanged for other modules.

        Note that although it is often a good idea for the replaced binding to remain compatible with a binding in (guile), to avoid surprising the user, sometimes the bindings will be incompatible. For example, SRFI-19 exports its own version of current-time (see SRFI-19 Time) which is not compatible with the core current-time function (see Time). Guile assumes that a user importing a module knows what she is doing, and uses #:replace for this binding rather than #:export.

        A #:replace clause is equivalent to (export! list) in the module body.

        The #:duplicates (see below) provides fine-grain control about duplicate binding handling on the module-user side.
    #:re-export-and-replace list

        Like #:re-export, but also marking the bindings as replacements in the sense of #:replace.
    #:version list

        Specify a version for the module in the form of list, a list of zero or more exact, nonnegative integers. The corresponding #:version option in the use-modules form allows callers to restrict the value of this option in various ways.
    #:duplicates list

        Tell Guile to handle duplicate bindings for the bindings imported by the current module according to the policy defined by list, a list of symbols. list must contain symbols representing a duplicate binding handling policy chosen among the following:

        check

            Raises an error when a binding is imported from more than one place. 
        warn

            Issue a warning when a binding is imported from more than one place and leave the responsibility of actually handling the duplication to the next duplicate binding handler. 
        replace

            When a new binding is imported that has the same name as a previously imported binding, then do the following:

                If the old binding was said to be replacing (via the #:replace option above) and the new binding is not replacing, the keep the old binding.
                If the old binding was not said to be replacing and the new binding is replacing, then replace the old binding with the new one.
                If neither the old nor the new binding is replacing, then keep the old one. 

        warn-override-core

            Issue a warning when a core binding is being overwritten and actually override the core binding with the new one. 
        first

            In case of duplicate bindings, the firstly imported binding is always the one which is kept. 
        last

            In case of duplicate bindings, the lastly imported binding is always the one which is kept. 
        noop

            In case of duplicate bindings, leave the responsibility to the next duplicate handler. 

        If list contains more than one symbol, then the duplicate binding handlers which appear first will be used first when resolving a duplicate binding situation. As mentioned above, some resolution policies may explicitly leave the responsibility of handling the duplication to the next handler in list.

        If GOOPS has been loaded before the #:duplicates clause is processed, there are additional strategies available for dealing with generic functions. See Merging Generics, for more information.

        The default duplicate binding resolution policy is given by the default-duplicate-binding-handler procedure, and is

        (replace warn-override-core warn last)

    #:pure

        Create a pure module, that is a module which does not contain any of the standard procedure bindings except for the syntax forms. This is useful if you want to create safe modules, that is modules which do not know anything about dangerous procedures. 

syntax: export variable …

    Add all variables (which must be symbols or pairs of symbols) to the list of exported bindings of the current module. If variable is a pair, its car gives the name of the variable as seen by the current module and its cdr specifies a name for the binding in the current module’s public interface. 

syntax: define-public …

    Equivalent to (begin (define foo ...) (export foo)). 

syntax: re-export variable …

    Add all variables (which must be symbols or pairs of symbols) to the list of re-exported bindings of the current module. Pairs of symbols are handled as in export. Re-exported bindings must be imported by the current module from some other module. 

syntax: export! variable …

    Like export, but marking the exported variables as replacing. Using a module with replacing bindings will cause any existing bindings to be replaced without issuing any warnings. See the discussion of #:replace above. 

Footnotes
(20)

In Guile 2.2 and earlier, all the module bindings would become available; symbol-list was just the list of bindings that will first trigger the load.<br><br>

LICENSE

MIT Microsoft




